class Category < ApplicationRecord
  has_many :products  # Bir category birden fazla ürünü kapsayabilir.
end
