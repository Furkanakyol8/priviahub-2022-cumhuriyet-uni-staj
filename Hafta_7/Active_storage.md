# Active Storage Nedir?
Active Storage, dosyaların Amazon S3, Google Cloud Storage veya Microsoft Azure Storage gibi bir bulut depolama hizmetine yüklenmesini ve bu dosyaların Active Record nesnelerine eklenmesini kolaylaştırır. Geliştirme ve test için yerel disk tabanlı bir hizmetle birlikte gelir ve yedeklemeler ve geçişler için ikincil hizmetlere dosyaları yansıtmayı destekler. Bir uygulama, Active Storage kullanarak görüntü yüklemelerini dönüştürebilir veya PDF'ler ve videolar gibi görüntü olmayan yüklemelerin görüntü temsillerini oluşturabilir ve rastgele dosyalardan meta veriler çıkarabilir.
## Kurulum
Active Storage uses three tables in your application’s database named `active_storage_blobs`, `active_storage_variant_records` and `active_storage_attachments`. After creating a new application (or upgrading your application to Rails 5.2), run `bin/rails active_storage:install` to generate a migration that creates these tables. Use `bin/rails db:migrate` to run the migration.

