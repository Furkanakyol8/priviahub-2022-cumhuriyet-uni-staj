# Koleksiyon üzerinde gerçekleştirilen eylemler için kullanılır.

resource :posts do
    get :search, on: :collection
end # => search_posts GET       /posts/search(.:format)

# Collection_routes, herhangi bir parametre almıyor. Sadece posts kaynağı üzerinde hareket eder.

resource :posts do
    member do
      post :archive
      get :inactivate
    end
  
    collection do
      get :search
      post :upload
    end
  end

#Birden fazla route'u blok kullanarak tanımlayabiliriz. 