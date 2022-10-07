# Nested route' un amacı; kodu daha okunur hale getirir ve ilişkilendirmeleri daha kolay yapmayı sağlar.
# Nesting bize her zaman URL üzerinden üst kimliğe erişim sağlar.

class Article< ActiveRecord::Base
    has_many :comments
  end
  
  class Comment< ActiveRecord::Base
    belongs_to :article
  end # => /articles/:article_id/comments/:id(.:format)

  def show
    @article = Article.find(params[:article_id])
    @comment = Comment.find(params[:id])
    @article = @comment.article 
  end
  
  def new
    @article = Article.new
    @comment = @article.comments.build
  end

  resources :articles do
    resources :comments, shallow: true
  end