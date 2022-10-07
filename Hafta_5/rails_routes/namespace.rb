# Namespace kullanıldığında belirtilen kaynaklar için URL yolunun önüne eklenir ve denetleyici ad alanıyla aynı şekilde adlandırılmış bir modülün altına yerleştirmeye çalışır.

namespace :admin do
    resources :users
  end

=begin
Route'lar bu şekildedir.
Prefix Verb   URI Pattern                Controller#Action
admin_users GET    /admin/users(.:format)     admin/users#index
            POST   /admin/users(.:format)     admin/users#create
admin_user  GET    /admin/users/:id(.:format) admin/users#show
            PATCH  /admin/users/:id(.:format) admin/users#update
            PUT    /admin/users/:id(.:format) admin/users#update
            DELETE /admin/users/:id(.:format) admin/users#destroy
    
admingibi, URI yolunda ( ) bir önek olarak /admin/usersve denetleyiciyi ( ) içeren bir modül olarak eklendi admin/users#index.

=end