# Yapmak istediğimiz işlem için bize daha fazla seçenek sunar.

scope :admin do
    resources :users
  end

=begin
    
  Prefix Verb   URI Pattern                Controller#Action
 users GET    /admin/users(.:format)     users#index
       POST   /admin/users(.:format)     users#create
  user GET    /admin/users/:id(.:format) users#show
       PATCH  /admin/users/:id(.:format) users#update
       PUT    /admin/users/:id(.:format) users#update
       DELETE /admin/users/:id(.:format) users#destroy
    
=end

# Scope üç seçeneği destekler: path, module, as.

scope module: 'admin' do
    resources :users
  end

=begin
    
Prefix Verb   URI Pattern          Controller#Action
 users GET    /users(.:format)     admin/users#index
       POST   /users(.:format)     admin/users#create
  user GET    /users/:id(.:format) admin/users#show
       PATCH  /users/:id(.:format) admin/users#update
       PUT    /users/:id(.:format) admin/users#update
       DELETE /users/:id(.:format) admin/users#destroy
    
=end

# Module, gömülü kaynaklar için denetleyicinin hangi modülde yaşayacağını tanımlamamıza izin verir.


scope module: 'admin', path: 'fu' do
    resources :users
  end

=begin
    
Prefix Verb   URI Pattern             Controller#Action
 users GET    /fu/users(.:format)     admin/users#index
       POST   /fu/users(.:format)     admin/users#create
  user GET    /fu/users/:id(.:format) admin/users#show
       PATCH  /fu/users/:id(.:format) admin/users#update
       PUT    /fu/users/:id(.:format) admin/users#update
       DELETE /fu/users/:id(.:format) admin/users#destroy

=end

# Path, kaynak adından önce URI'de görünecek öneki ayarlamamıza izin verir.


scope module: 'admin', path: 'fu', as: 'cool' do
    resources :users
end

=begin
    
Prefix Verb   URI Pattern             Controller#Action
cool_users GET    /fu/users(.:format)     admin/users#index
           POST   /fu/users(.:format)     admin/users#create
cool_user  GET    /fu/users/:id(.:format) admin/users#show
           PATCH  /fu/users/:id(.:format) admin/users#update
           PUT    /fu/users/:id(.:format) admin/users#update
           DELETE /fu/users/:id(.:format) admin/users#destroy

=end

# As, kaynakları tanımlamak için kullanılan yol yönteminin adını değiştirmek için kullanılabilir.
