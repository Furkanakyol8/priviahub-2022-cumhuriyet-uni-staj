Rails.application.routes.draw do
  namespace "api" do    # products diye bir controller'ım var ve bu api'ın içerisinde demek için namespace komutunu kullanırız.
    resources :products # Gelen istekleri nereye yönlendireceğini belirtmek için resources komutunu kullanırız.
    resources :categories
  end
end
