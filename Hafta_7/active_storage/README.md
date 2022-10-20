# ActiveStorage Nedir?

Active Storage, dosyaların Amazon S3, Google Cloud Storage veya Microsoft Azure Storage gibi bir bulut depolama hizmetine yüklenmesini ve bu dosyaların Active Record nesnelerine eklenmesini kolaylaştırır. Geliştirme ve test için yerel disk tabanlı bir hizmetle birlikte gelir ve yedeklemeler ve geçişler için ikincil hizmetlere dosyaları yansıtmayı destekler.

Bir uygulama, Active Storage kullanarak görüntü yüklemelerini dönüştürebilir, PDF'ler ve videolar gibi görüntü olmayan yüklemelerin görüntü temsillerini oluşturabilir ve rastgele dosyalardan meta veriler çıkarabilir.

## Kurulum

Terminalde; ` rails active_storage:install ` komutunu çalıştırırız. Bu çalıştırılan kod ` active_storage_blobs ` ve ` active_storage_attachments ` tablolarını oluşturan bir migration dosyası ve servis konfigürasyonları için config altında ***storage.yml*** dosyası oluşturur.

![resim_1](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_7/active_storage/img/Resim_1.png)

## ActiveStorage’ın Temel Sınıfları Nedir?

- ActiveStorage::Service

- ActiveStorage::Blob

- ActiveStorage::Attachment

### ActiveStorage::Service 

Service sadece baytların hareketinden sorumlu kısımdır. Dosyanın baytlarını bellekten ve browserdan alıp disk’e taşır.

![resim_2](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_7/active_storage/img/Resim_2.png)

ActiveStorage::Service aslında bir patterndir. Sadece bir tane service değil, birden fazla subclass barındırır. Yani ActiveStorage::Service’i direk çağırıp upload/download metodlarını kullanamayız. Onun subclass’larından biriyle çağırabiliriz. Tüm alt sınıflarda upload ve download metodu mevcut çünkü her servis kendi gerçeklemesini farklı bir yol ile yapmaktadır.

Disk alt sınıfı: ` class ActiveStorage::Service::DiskService < Service `

S3 alt sınıf: ` class ActiveStorage::Service::S3Service < Service `

Farklı bir servis kullanmak istiyorsak bu pattern doğrultusunda oluşturup kullanabiliriz. ActiveStorage şu an Disk, Amazon S3, Microsoft Azure Storage, Google Cloud Storage, Mirror servislerini desteklemektedir.

#### Yeni Servis Konfigürasyonu

***storage.yml*** içerisinde default servis olarak Disk kullanılmaktadır. Hangi servisi kullanmak istiyorsak onu belirtmeliyiz. Örneğin Amazon S3 servisini eklemek için aşağıdaki gibi bir düzenleme yapmamız ve **aws-sdk-s3** gem’ini Gemfile’a eklememiz gerekmektedir.

![resim_3](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_7/active_storage/img/Resim_3.png)

### Mirror Servis Özelliği

Birden fazla servisi senkronize olarak mirror servis olarak kullanarak yedekli çalışabiliriz. Bir dosya eklendiğinde veya silindiğinde bütün mirror edilmiş servislere aynı anda yansıtılır. Bu özellik production’da servisler arası geçişi kolaylaştırmak için kullanılabilir. Dosyalar primary servisten sunulur.

![resim_4](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_7/active_storage/img/Resim_4.png)

### ActiveStorage::Blob

Blob; dosya adı, content-type gibi metadataların tutulduğu yerdir. Dosyanın aslı depolama servisinde ya da diskte saklanır. Her blob’un depolama servisinde identifier key’i vardır.

![resim_5](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_7/active_storage/img/Resim_5.png)

### ActiveStorage::Attachment

**Attachment**, blob ile model arasında bağlantıyı sağlar. Bir blob un birden fazla modelle bağlantısı olabilir.

![resim_6](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_7/active_storage/img/Resim_6.png)

## Nasıl Dosya Ekleriz?

***Phone*** adında bir modelimiz olsun ve telefon resimlerini tutmak için dosya upload etmek isteyelim. O halde Rails’de yapacağınız ilk iş bir migration ile modelimize resimleri tutacağımız yeni bir kolon eklemektir. Bu upload yapmak istediğimiz her model için geçerlidir.
ActiveStorage ise diğer dosya upload çözümlerinden biraz farklı çalışır. ActiveStorage’da modelinize yeni bir alan eklemenize gerek yok. Dosya ile ilgili bütün bilgiler activestorage install edilirken oluşturulan `blobs` ve `attachments` tablolarında tutulmaktadır.

**Bir dosya attach etmek için yapılması gerekenler**

![resim_7](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_7/active_storage/img/Resim_7.png)

**Birden fazla dosya attach etmek için yapılması gerekenler**

![resim_8](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_7/active_storage/img/Resim_8.png)

## Transformation İşlemleri

Transforming işlemcilerin(processor) destekleği metodlar ölçüsünde bloblar üzerinde resimlerin varyasyonlarını oluşturabiliriz. Biçimlendirmeyi etkinleştirmek için __image_processing__ gemi kullanılmaktadır.

` gem 'image_processing', '~> 1.2' `

Aşağıdaki satır yorumlandığı zaman bir defaya mahsus orijinal blob’un biçimlendirilmiş halinin URL’i oluşturulur ve dosyalarınız nerede tutuluyorsa disk/cloud oraya kaydedilir.

` <%= image_tag @cat.image.variant(resize: "100x100") %> `

## Direkt Upload

ActiveStorage bir ruby gemi olmasının yanında bünyesinde javascript kütüphanesi de barındırır. Dosyalarımızı Rails uygulamasına değil de direk cloud bir servise upload etmek istediğimiz zaman bu javascript kodları devreye girmektedir.

Blob oluşurken bir identifier key üretilir ve dosya bu key ile cloud servise upload edilir. Resme tekrar ulaşmak istediğimizde bu key ile bağlantı kurulup erişilmektedir. Direkt upload işleminde blob oluşturulma ve resmin store edilme sıralamasında değişiklik olur. Direkt upload işlemi için:

`<%= form.file_field :images, multiple: true, direct_upload: true %> `




 







