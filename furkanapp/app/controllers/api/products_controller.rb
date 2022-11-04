module Api  # Api modülümüzü oluşturduk.
  class ProductsController < ApplicationController
=begin
          ACTION CONTROLLER
    Before Action yapıları sayesinde belirli methodlardan önce gerçekleştirilmesi gereken işlemleri gerçekleştiririz.
    Bu sayede daha temiz, tekrara düşmeden kod yazma imkanı sağlarız.

    After Action yapıları sayesinde belirli methodlardan sonra gerçekleştirilmesi gereken işlemleri gerçekleştiririz.
    Bu sayede daha temiz, tekrara düşmeden koz yazma imkanı sağlarız.

    Diğer Action Controllerlar:

    around_action
    append_after_action, append_around_action, append_before_action
    prepend_after_action, prepend_around_action, prepend_before_action
    skip_after_action, skip_around_action, skip_before_action

    Bir örnek üzerinde göremediğim için henüz tam olarak ne işe yaradıklarını bilmiyorum.


        CRUD

    CREATE (OLUŞTUR) : Bu özellik, örneğin, ilgili işlevi çağıracak olan uygulamadaki "Ekle" düğmesine basarak, bazı tetikleyicilerle
   uygulamaya/veritabanına yeni bir öğe ekler.

    READ (OKUMA) : Bu özellik, veritabanında belirli bir değer hakkında bir kayıt olup olmadığını görmenizi sağlar.
   Bu fonksiyon veritabanında herhangi bir bilgiyi değiştirmez, sadece görüntüleme yapabilmenizi sağlar.

    UPDATE (GÜNCELLEME) : Bu özellikl sayesinde veritabanındaki bir değeri değiştirebilirsiniz.

    DELETE (SİLME) : Bu fonksiyon sayesinde veritabanında istemediğiniz bir kaydı silebilirsiniz.

    Tanım olarak, CRUD mimari bir kavramdan çok bir döngüdür. Herhangi bir web uygulamasında birkaç CRUD döngüsü vardır.
   Örneğin, bir online mağazada, bir müşteri bir hesap OLUŞTURABİLİR, hesap bilgilerini GÜNCELLEYEBİLİR ve sepetteki ürünleri SİLEBİLİR.
=end

    before_action :set_product, only: %i[update show destroy] # "update show destroy" methodlarından önce her zaman set_product çalıştırır.
    after_action :confirm_message, only: %i[create]   # "create" methodundan sonra her zaman confirm_message çalıştırır.
    before_action :authenticate_user!


    def index   # ismi "mobile" olan tüm ürünleri, sondan başa doğru listeler
      authorize(@product)
      @products = Product.all
      render json: @products
    end

    def show    # bir ID değeri ile birlikte ürünün detaylarını gösterir.
      image = rails_blob_url(@product.product_image)
      render json: {"image": image, "data": @product}
    end

    def create  # Yeni bir ürün oluşturmamızı sağlar.
      @product = Product.create(product_params)

      @product.save
      render json: @product
    end

    def update  # Ürünlerin çeşitli parametrelerini güncellememizi sağlar.
      authorize(@product)
      @product.update(product_params)
      render json: @product
    end

    def destroy # İstediğimiz ürünleri silme işlemini gerçekleştirir.
      authorize(@product)
      @product.destroy
      render json: "ürün silindi"
    end

    def set_product # ID değerini gerekli fonksiyonlar için kullanılabilir hale getirir.
      @product = Product.find(params[:id])
    end

    def confirm_message # Bilgilendirme mesajı verir.
      print "İŞLEM BAŞARIYLA GERÇEKLEŞTİRİLDİ"
    end

    def product_params  # Ürün oluştururken ve listelerken gerekli parametreleri girmemizi/görmemizi sağlar.
      params.permit(:name,:description,:quantity,:price,:product_image)
    end
  end
end
