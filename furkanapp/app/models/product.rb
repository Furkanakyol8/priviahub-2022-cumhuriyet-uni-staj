class Product < ApplicationRecord

  has_one_attached :product_image # has_one_attached ile buraya bir dosya geleceğini belirtiriz ve active stora datasına kaydederiz.
=begin
    `rails active_storage:install` komutuyla active storagemizi oluşturduk ve migrate ettik.
    Bu sayede ürün fotoğrafı içeriğimizi de ekleyebileceğiz.
=end
  belongs_to :category  # product nesnesinin bir category nesnesine ait olduğunu belirtir.
  after_create :send_notification # Kayıt oluşturulduktan sonra...

  def send_notification # Kayıt oluşturulduktan sonra mesaj gönderir.
    p 'Bütün kulanıcılara yeni ürün eklendiği bildirimi gönder'
  end

end
