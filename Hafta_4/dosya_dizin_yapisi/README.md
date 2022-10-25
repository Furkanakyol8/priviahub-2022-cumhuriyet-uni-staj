Ubuntu terminal üzerinde "rails new projeadı" şeklinde komut veriyoruz. Ben myproject adında bir klasör oluşturdum.

![resim_2](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/dosya_dizin_yapisi/img/resim_2.png)

Sonrasında gerekli indirme işlemleri yapılıp, klasör oluşturuluyor. ls komutu ile oluşmuş mu diye kontrol edebiliriz. cd komutu ile de klasörün içerisine girebiliriz. Proje içinde app, bin config,db, lib, log, public, test,tmp ve vendor dizinleri ile bir kaç dosya görüyoruz. Şimdi bunların ne işe yaradıklarına değinelim:

- app/ : Bu klasörde views, controllers ve models katmanları bulunur.

- config/ : Bu klasörde uygulamamızın çalışma kuralları, yolları, veritabanı ve yapılandırma dosyaları bulunur.

- config.ru : Rack temelli suncucular için uygulamayı başlatmak için konfigürasyonlar içerir.

- db/ : Geçerli veritabanı şeması, ve veritabanı geçişleri için birleştirmeleri (Migration) içerir.

- Gemfile : Bu dosya Rails uygulamamızın bağlantılı olduğu Gem’leri belirtir.

- lib/ : Uygulamamız için modüller bulundurur.

- log/ : Uygulamamızın log dosyaları.

- public/ : Dışarıdan , oldukları şekilde ulaşılabilen dosyalar buradadır. Burada statik dosyalarımız bulunur, tüm resimleriniz, javascriptleriniz, stilleriniz vs.

- README : Uygulama için kısa kullanım kılavuzudur. Uygulamamızın ne yaptığını, nasıl yaptığını vb. ayarları için kullanıcılara söylemek istediklerimizi bu dosyaya yazarız.

- test/ : Birim testleri , bağlayıcılar ve diğer test yardımcılarını içerir.

- tmp/ : Geçici dosyaları barındırır.

- vendor/ : Tüm 3. parti yazılımları buradadır. Tipik bir Rails uygulamasında, Gem dosyaları,pluginler ve projenizin içine gömecekseniz Rails kaynak kodu bulunur.

![resim_1](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/dosya_dizin_yapisi/img/resim_1.png)

Rails temeli; Model(ActiveRecord), Views(ActionView),
Controller(ActionController) (MVC) üzerine kuruludur.

- Model’ler: Rails yapısında modeller esas olarak veritabanı ile olan ilişkilerden sorumludur. Veri tabanınızdaki her tabloya karşılık uygulamanızda bir model olacaktır.
Örneğin comment modeli veritabanında comments tablosu ile ilşkilidir. Comment modeli bu tabloda Create, Read, Update ve Delete işlemlerini yapar.

- View’ler: Görseller uygulamanızın kullanıcıya gözüken yüzüdür. Rails’de görseller, ruby kodlarıyla birleştirilmiş HTML dosyalarıdır. View’ın, Model ile iletişimi Controller üzerinden olur. 

- Controller’lar: Kontrolörler, modeller ve görseller arasında birleştirici görevi yaparlar. Rails’de kontrolörler, dış dünyadan kullanıcı aracılığıyla web den gelen istekleri kabul edip işleyerek verileri kullanıcıya sunulması için view katmanına göndermekte. 


