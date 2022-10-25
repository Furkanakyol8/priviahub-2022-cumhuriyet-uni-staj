MVC’nin açılımı: Model, View, Controller’ dır.

![resim_2](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/mvc/img/resim_2.png)

Model, View ve Controller arasındaki ilişki ‘Şekil 1’ de görüdüğü gibidir. Ve bunların proje dosyası içindeki görünümleri de ‘Şekil2’ deki gibidir.

![resim_11](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/mvc/img/resim_11.png)

Peki Model, View ve Controller nelerdir? İnceleyelim.

- MODEL: Uygulamaya özel verilerin ve uygulamanın iş mantığına uygun biçimde bu veriler arasındaki ilişkilerin, erişim ve düzenleme kurallarının bulunduğu bölümdür.
Diğer bir deyişle uygulamamızın kullandığı tüm verilerin yaşadığı yer burasıdır.
Eğer uygulamamızın veritabanı kullanması gerekli ise veritabanına erişimle yükümlü bölüm modeldir.

![resim_1](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/mvc/img/resim_1.png)

- VİEW: Uygulamanın kullanıcılarına sunulacak olan arayüz elemanlarını içeren bölümdür.

![resim_3](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/mvc/img/resim_3.png)

- CONTROLLER: Kullanıcıdan gelen isteklerle ilgili işlemleri gerçekleştirmek üzere gerekli görevleri yerine getiren bölümdür. Kullanıcı ne zaman bir istekte bulunsa bu isteği ele alacak bölüm burasıdır. İsteğe uygun olarak gerekli yanıtı(genellikle bir view oluşturmak),istemciye ulaştırmakla görevlidir. Model ve view arasında doğrudan bir ilişki söz konusu olmadığından controller aracı rolünü üstlenir. 

![resim_4](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/mvc/img/resim_4.png)

Örnek bir controller dosyası inceleyelim.

![resim_5](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/mvc/img/resim_5.png)


![resim_6](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/mvc/img/resim_6.png)

Terminalimize rails s yazdığımızda tarayıcı get isteğinde bulur ve bize bir bağlantı oluşur.

![resim_7](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/mvc/img/resim_7.png)

Web sunucusu daha sonra Ruby on Rails Framework’e bağlanacaktır, bu bağlanma basamağında ilk önce “Routing” denen işlemler topluluğunu gerçekleştirecektir.

![resim_8](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/mvc/img/resim_8.png)

Şimdi path listelerini inceleyelim.

![resim_9](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/mvc/img/resim_9.png)

Bu aşamada app klasöründeki controller klasörüne giden bu uygulama bu klasörde post controllerına ve bu controller altındaki ruby actionuna(index) bakacaktır.

![resim_10](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/mvc/img/resim_10.png)

Html sayfaları render edilerek viewde anlaşılacak olan .erb uzantılı sayfalara dönüştürülür. Controller ile model arasındaki bağlantı ardından model veritabanına erişerek postların sorgusunu alır ve controller' a iletir. Controller çekilen verileri alıp view'e iletir. Son olarak view ise karşımıza sunulan arayüzü oluşturur ve tarayıcımıza html sayfaları şeklinde sunulur.
Eğer rails routes da belirtilen yollardan farklı olarak bir yol belirtilseydi, routing hatası alarak belirtilen url'le gidilemezdi.