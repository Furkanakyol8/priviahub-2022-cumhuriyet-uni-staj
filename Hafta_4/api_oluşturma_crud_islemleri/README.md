- Projemizi oluşturmaya başlayalım.

![resim_13](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/api_olu%C5%9Fturma_crud_islemleri/img/resim_13.png)

Api oluşturduğumuz için kullanılmayan dosyalar silindi.

![resim_1](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/api_olu%C5%9Fturma_crud_islemleri/img/resim_1.png)

Yukarıda --api yazarak api oluşturduğumuzu belirttik. --database=postgresql ile kullanacağımız database i belirttik.

- Oluşan projenin içine girmek için -cd komutunu kullanırız.

![resim_2](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/api_olu%C5%9Fturma_crud_islemleri/img/resim_2.png)

- Projemizin içine girmiş olduk. Şimdi modelimizi oluşturalım.

![resim_3](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/api_olu%C5%9Fturma_crud_islemleri/img/resim_3.png)

![resim_4](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/api_olu%C5%9Fturma_crud_islemleri/img/resim_4.png)

Vs code' da şu şekilde görürüz.

![resim_5](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/api_olu%C5%9Fturma_crud_islemleri/img/resim_5.png)

- Şimdii, yaptığımız tüm bu işlemleri veritabanına yansıtalım.

![resim_6](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/api_olu%C5%9Fturma_crud_islemleri/img/resim_6.png)

Veritabanına yansıtma işlemi başarılı.

![resim_7](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/api_olu%C5%9Fturma_crud_islemleri/img/resim_7.png)

Sırada controller'larımızı oluşturmak var. Bunun için model'de yaptığımızın aynısını yapacağız.

![resim_8](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/api_olu%C5%9Fturma_crud_islemleri/img/resim_8.png)

![resim_9](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/api_olu%C5%9Fturma_crud_islemleri/img/resim_9.png)

Vs code görünümüne bakalım. ProductsController'ımız oluştu.

![resim_10](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/api_olu%C5%9Fturma_crud_islemleri/img/resim_10.png)

- Sırada Route ayarı kaldı.

![resim_11](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/api_olu%C5%9Fturma_crud_islemleri/img/resim_11.png)

Ayarlar bittikten sonra terminale rails routes yazarak route' lara ulaşabiliriz.


![resim_12](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_4/api_olu%C5%9Fturma_crud_islemleri/img/resim_12.png)

Ruby on Rails kullanarak api yi yazmış bulunmaktayız. Yazdığımız api 4 temel CRUD(Create, Read, Update, Delete) fonksiyonunu gerçekleşebiliyoruz. Yani oluşturma, okuma, güncelleme ve silme işlemlerini gerçekleştirebiliyoruz. Bunlardan da kısaca bahsetmek gerekirse;

- CREATE (OLUŞTUR) : Bu özellik, ilgili işlevi çağıracak olan uygulamadaki "Ekle" düğmesine basarak, bazı tetikleyicilerle uygulamaya/veritabanına yeni bir öğe ekler.

- READ (OKUMA) : Bu özellik, veritabanında belirli bir değer hakkında bir kayıt olup olmadığını görmenizi sağlar. Bu fonksiyon veritabanında herhangi bir bilgiyi değiştirmez, sadece görüntüleme yapabilmenizi sağlar.

- UPDATE (GÜNCELLEME) : Bu özellik sayesinde veritabanındaki bir değeri değiştirebilirsiniz. 

- DELETE (SİLME) : Bu fonksiyon sayesinde veritabanında istemediğiniz bir kaydı silebilirsiniz.