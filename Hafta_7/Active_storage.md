# Active Storage Nedir?
Active Storage, dosyaların Amazon S3, Google Cloud Storage veya Microsoft Azure Storage gibi bir bulut depolama hizmetine yüklenmesini ve bu dosyaların Active Record nesnelerine eklenmesini kolaylaştırır. Geliştirme ve test için yerel disk tabanlı bir hizmetle birlikte gelir ve yedeklemeler ve geçişler için ikincil hizmetlere dosyaları yansıtmayı destekler. Bir uygulama, Active Storage kullanarak görüntü yüklemelerini dönüştürebilir veya PDF'ler ve videolar gibi görüntü olmayan yüklemelerin görüntü temsillerini oluşturabilir ve rastgele dosyalardan meta veriler çıkarabilir.
## Kurulum
Active Storage uses three tables in your application’s database named `active_storage_blobs`, `active_storage_variant_records` and `active_storage_attachments`. After creating a new application (or upgrading your application to Rails 5.2), run `bin/rails active_storage:install` to generate a migration that creates these tables. Use `bin/rails db:migrate` to run the migration.


`active_storage_attachments`, modelinizin sınıf adını saklayan çok biçimli bir birleştirme tablosudur. Modelinizin sınıf adı değişirse, temel alınan `record_type`'ı modelinizin yeni sınıf adıyla güncellemek için bu tabloda bir geçiş çalıştırmanız gerekir.

Modellerinizde birincil anahtar olarak tamsayılar yerine UUID'leri kullanıyorsanız, oluşturulan geçişte `active_storage_attachments.record_id` ve `active_storage_variant_records.id` sütun türünü buna göre değiştirmeniz gerekir.

`config/storage.yml` içinde Active Storage hizmetlerini bildirin. Uygulamanızın kullandığı her hizmet için bir ad ve gerekli yapılandırmayı sağlayın. Aşağıdaki örnek; `local`, `test` ve `amazon` adlı üç hizmeti bildirir:

```
local:
  service: Disk
  root: <%= Rails.root.join("storage") %>

test:
  service: Disk
  root: <%= Rails.root.join("tmp/storage") %>

amazon:
  service: S3
  access_key_id: ""
  secret_access_key: ""
  bucket: ""
  region: "" # e.g. 'us-east-1'

```

`Rails.application.config.active_storage.service` ayarını yaparak Active Storage'a hangi hizmeti kullanacağını söyleyin. Her ortam büyük olasılıkla farklı bir hizmet kullanacağından, bunu ortam bazında yapmanız önerilir. Geliştirme ortamında önceki örnekteki disk hizmetini kullanmak için aşağıdakileri `config/environments/development.rb` dosyasına eklersiniz:
```
# Store files locally.
config.active_storage.service = :local
```

S3 hizmetini üretimde kullanmak için aşağıdakileri `config/environments/production.rb`'ye eklersiniz:
```
# Store files on Amazon S3.
config.active_storage.service = :amazon
```
Test hizmetini test ederken kullanmak için aşağıdakileri `config/environments/test.rb`'ye ekleyin:
```
# Store uploaded files on the local file system in a temporary directory.
config.active_storage.service = :test
```

Active Storagenin ne olduğunu ve nasıl kullanıldığını temel düzeyde anlattım. Detaylar için: [](https://edgeguides.rubyonrails.org/active_storage_overview.html)
