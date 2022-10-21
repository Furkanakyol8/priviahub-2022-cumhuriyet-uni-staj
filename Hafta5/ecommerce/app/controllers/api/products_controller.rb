module Api # api modulü oldugunu belirtiriz.
  class ProductsController < ApplicationController

    before_action :set_product, only: %i[update destroy] # before_action ile controller'ımızda yapılacak bütün  işlemlerinden önce yapılması gereken metodu belirtiriz.
    after_action :confirm_message, only: %i[create] # after_action ile controller'ımızda yapılacak işlemlerden sonra çalışmasını istediğimiz metodu belirtiriz.

    def create # Veritabanına yeni bir öğe eklememizi sağlar.
      @product = Product.create(product_params)
      @product.save # kayıt işlemini yapar
      render json: @product # kaydedilmiş olan porduct'ı geriye döndür demektir.
    end

    def update  # Veritabanındaki bir değeri değiştirebiliriz.
      @product.update(product_params)
      render json: @product
    end

    def destroy # Veritabanında istemediğiniz bir kaydı silebiliriz.
      @product.destroy
      render json: "ürün silindi"
    end

    def set_product
      @product = Product.find(params[:id])
    end

    def confirm_message
      print "İŞLEM BAŞARIYLA GERÇEKLEŞTİRİLDİ"
    end

    def product_params # İstek geldiğinde sadece burada yazılan veriye izin verir.
      params.permit(:name,:description,:quantity,:price,:product_image)
    end
  end
end