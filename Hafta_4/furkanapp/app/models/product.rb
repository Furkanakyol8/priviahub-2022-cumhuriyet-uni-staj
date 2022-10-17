class Product < ApplicationRecord

  has_one_attached :product_image # has_one_attached ile buraya bir dosya geleceğini belirtiriz ve active stora datasına kaydederiz.
=begin
    `rails active_storage:install` komutuyla active storagemizi oluşturduk ve migrate ettik.
    Bu sayede ürün fotoğrafı içeriğimizi de ekleyebileceğiz.
=end
end
