Rails.application.routes.draw do
    resources :homes
    get ‘homes/:id/reviews => ‘homes#reviews’
  end

=begin
    
Prefix Verb   URI Pattern                  Controller#Action 
home   GET    /homes/:id(.:format)         homes#show
       PATCH  /homes/:id(.:format)         homes#update
       PUT    /homes/:id(.:format)         homes#update
       DELETE /homes/:id(.:format)         homes#destroy
       GET    /homes/:id/reviews(.:format) homes#reviews
    
=end

