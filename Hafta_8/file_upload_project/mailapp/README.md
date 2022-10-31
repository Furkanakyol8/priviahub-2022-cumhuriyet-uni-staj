# Kullanılan Metotlar ve Yöntemler

### rails g active_storage:install

- Bu komutu terminale yazarak ActiveStorage' ın kurulumunu başlatmış oluyoruz. Böylelikle bu çalıştırılan kod ``active_storage_blobs`` ve ``active_storage_attachments`` tablolarını oluşturan bir migration dosyası ve servis konfigürasyonları için config altında **storage.yml** dosyası oluşturur.

### rails g action_text:install

- Action Text, Rails'e zengin metin içeriği ve düzenleme olanağı veriyor. Biçimlendirmeden bağlantılara, alıntılara, listelerden gömülü görüntülere ve galerilere kadar her şeyi işleyen Trix düzenleyicisini içerir. Yükleme tamamlandıktan sonra, bir Rails uygulamasında aşağıdaki değişiklikler olmalıdır:

- JavaScript giriş noktanızda hem **trix** hem de **@rails/actiontext** gerekli olmalıdır.

### rails db:migrate

-  Çalıştırılmamış migration ları çalıştırır, sadece o anki ortam için.

### has_one_attached :image

- Dosya ile ilgili bütün bilgiler activestorage install edilirken oluşturulan `blobs` ve `attachments` tablolarında tutulmaktadır. Birden fazla dosya attach etmek için `has_many_attached` kulllanılır.

### params

- Params yöntemi, formdan gelen parametreleri (veya alanları) temsil eden nesnedir. Params yöntemi bir ActionController::Parameters nesnesi döndürür, bu da karmanın anahtarlarına dizeleri veya sembolleri kullanarak erişmenize olanak tanır.

### require 

- Belirli bir parametrenin mevcut olmasını sağlar ve sağlanmazsa, require yöntemi bir hata atar. ActionController::Parameters i döndürür. 

### permit

- Parametreler nesnesinin bir kopyasını döndürür ve yalnızca izin verilen anahtarları ve değerleri döndürür. Yeni bir ActiveRecord modeli oluştururken, modele yalnızca izin verilen öznitelikler geçirilir. Daha önce ActiveRecord modellerine dahil edilen beyaz listeye çok benziyor, ancak denetleyicide olması daha mantıklı.