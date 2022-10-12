## Rails Projesi Oluşturma
![projeimage](file:///home/furkan/Pictures/projeolusturma.png)

Projemizi oluşturmak istediğimiz dosya dizini içerisinde fotoğrafta belirtilen
komutu çalıştırıyoruz. Bu sayede postgresql veritabanı içeren 
, dosyaları hazır olarak oluşturulmuş "furkanapp" isimli bir rails projesi
karşımıza çıkıyor.

![furkanappimage](file:///home/furkan/Pictures/DosyaDizinYapisi.png)
## Dosya Dizin Yapısı
### app/
Bu klasörde temel yapı taşlarımız olan views,
controllers ve models katmanları bulunur.
![appsimage](file:///home/furkan/Pictures/apps.png)

###### assets/
Uygulamamızda statik olarak bulundurmak istediğimiz dosyaların
bulunduğu dosyadır. Örneğin bir resmi statik olarak tutmak
istiyorsak "assets/images/" altında tutabiliriz.
###### channels/
Web socket kullanarak bir noktadan başka bir noktaya mesaj/veri
gönderme işlemlerini anlık olarak gerçekleştirmemizi sağlayan tüm
dosyalar channels dosyası altında oluşur.
###### controllers/
Kontrol ve karar mekanizmasıdır. View ile model
arasındaki bağlantı kurulur. Kullanıcıdan gelen 
istekler controller’da değerlendirilir, kullanıcıya
dönüş yapılır.
###### helpers/
Yardımcı methodların içerisine yazıldığı dosyadır.
###### models/
Veritabanı ile olan ilişkilerden sorumludur. Veri tabanımızdaki 
her tabloya karşılık uygulamanızda bir model olacaktır.
###### views/
Kullanıcıların gördüğü sayfalardır.
HTML, CSS, javascript.. ve çok basit
php kodlar barındaribilir. Kullanıcıdan
alınan istekleri Controller’a iletmektedir.
## bin/

![binimage](file:///home/furkan/Pictures/bins.png)
## config/
![configimage](file:///home/furkan/Pictures/configs.png)

Bu klasörde uygulamamızın çalışma kuralları, yolları, veritabanı 
ve yapılandırma dosyaları bulunur.

## db/
![dbimage](file:///home/furkan/Pictures/dbs.png)

Geçerli veritabanı şeması, ve veritabanı geçişleri için birleştirmeleri 
(Migration) içerir.

## lib/
![libimage](file:///home/furkan/Pictures/libs.png)

Uygulamamız için modüller bulundurur.

## log/
![logimage](file:///home/furkan/Pictures/logs.png)

Uygulamamızın log dosyalarını bulundurur.

## public/
![publicimage](file:///home/furkan/Pictures/publics.png)

Dışarıdan , oldukları sekilde ulaşılabilen dosyalar buradadır.
Burada statik dosyalarımız bulunur, tüm resimleriniz, javascriptleriniz,
stilleriniz ..

## test/

![storageimage](file:///home/furkan/Pictures/storageandtest.png)

Birim testleri , bağlayıcılar ve diğer test yardımcılarını içerir.

## tmp/

![tmpimage](file:///home/furkan/Pictures/tmps.png)

Geçici dosyaları barındırır.

## vendor/

![vendorimage](file:///home/furkan/Pictures/vendors.png)

Tüm 3. parti yazılımları buradadır.

## Gemfile.rb
Bu dosya Rails uygulamamızın bağlantılı olduğu Gem’leri belirtir.

## README
uygulama için kısa kullanım kılavuzudur. Uygulamamızın ne yaptığını, 
nasıl, vb ayarları için kullanıcılara söylemek istediklerimizi bu 
dosyaya yazarız.












