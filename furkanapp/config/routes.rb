Rails.application.routes.draw do

  namespace "api" do
    resources :products
    resources :categories
    # Products ve categories dosyalarımızın yönlendirme işlemlerini 'resources' anahtar kelimesiyle gerçekleştiriyoruz.
  end
  scope 'api' do
    mount_devise_token_auth_for 'User', at: 'auth'
  end
end
