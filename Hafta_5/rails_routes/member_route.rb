# Bir member üzerinde gerçekleştirilen eylemler için member route tanımlanabilir.

resource :posts do
    post :archive, on: :member
end 

# => archive_post POST       /posts/:id/archive(.:format) 
# Post kaynağımız olsun ve bir gönderiyi arşivlemek isteyelim. Bunun  için rails tarafından tanımlanan route'ları kullanarak yazdırabiliriz.
# Böylece controller üzerinde parametre (:id) ve call action (archive) kabul eden bir route oluşmuştur(posts).
