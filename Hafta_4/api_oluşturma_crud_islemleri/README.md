- Projemizi oluşturmaya başlayalım.

![resim_]()

Api oluşturduğumuz için kullanılmayan dosyalar silindi.

![resim_]()

Yukarıda --api yazarak api oluşturduğumuzu belirttik. --database=postgresql ile kullanacağımız database i belirttik.

- Oluşan projenin içine girmek için -cd komutunu kullanırız.

![resim_]()

- Projemizin içine girmiş olduk. Şimdi modelimizi oluşturalım.

![resim_]()

![resim_]()

Vs code' da şu şekilde görürüz.

![resim_]()

- Şimdii, yaptığımız tüm bu işlemleri veritabanına yansıtalım.

![resim_]()

Veritabanına yansıtma işlemi başarılı.

![resim_]()

Sırada controller'larımızı oluşturmak var. Bunun için model'de yaptığımızın aynısını yapacağız.

![resim_]()

![resim_]()

Vs code görünümüne bakalım. ProductsController'ımız oluştu.

![resim_]()

- Sırada Route ayarı kaldı.

![resim_]()

Ayarlar bittikten sonra terminale rails routes yazarak route' lara ulaşabiliriz.


![resim_]()

Ruby on Rails kullanarak api yi yazmış bulunmaktayız. Yazdığımız api 4 temel CRUD(Create, Read, Update, Delete) fonksiyonunu gerçekleşebiliyoruz. Yani oluşturma, okuma, güncelleme ve silme işlemlerini gerçekleştirebiliyoruz. Bunlardan da kısaca bahsetmek gerekirse;

- CREATE (OLUŞTUR) : Bu özellik, ilgili işlevi çağıracak olan uygulamadaki "Ekle" düğmesine basarak, bazı tetikleyicilerle uygulamaya/veritabanına yeni bir öğe ekler.

- READ (OKUMA) : Bu özellik, veritabanında belirli bir değer hakkında bir kayıt olup olmadığını görmenizi sağlar. Bu fonksiyon veritabanında herhangi bir bilgiyi değiştirmez, sadece görüntüleme yapabilmenizi sağlar.

- UPDATE (GÜNCELLEME) : Bu özellik sayesinde veritabanındaki bir değeri değiştirebilirsiniz. 

- DELETE (SİLME) : Bu fonksiyon sayesinde veritabanında istemediğiniz bir kaydı silebilirsiniz. 