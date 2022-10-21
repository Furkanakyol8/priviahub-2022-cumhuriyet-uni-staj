Rails.application.routes.draw do

  namespace "api" do
    resources :products
    resources :categories
    # Products ve categories dosyalarımızın yönlendirme işlemlerini 'resources' anahtar kelimesiyle gerçekleştiriyoruz.
  end
end
