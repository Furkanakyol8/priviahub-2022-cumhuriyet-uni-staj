# ACTIVE RECORD CALLBACKS

Geri aramalar, bir nesnenin yaşam döngüsünün belirli anlarında çağrılan yöntemlerdir.
Geri aramalarla, bir Active Record nesnesi oluşturulduğunda, kaydedildiğinde, güncellendiğinde,
silindiğinde, doğrulandığında veya veritabanından yüklendiğinde çalışacak kodlar yazmak mümkündür.

## Methodlar

- before_validation : Doğrulama işlemlerinden hemen önce çalışır.
- after_validation  : Doğrulama işlemlerinden hemen sonra çalışır.
- before_save : Bir veri kaydedilmeden hemen önce çalışır.
- around_save : Bir veri kaydedilirken çalışır.
- after_save :  Bir veri kaydedildikten hemen sonra çalışır.
- before_create : Bir kayıt oluşturulmadan hemen önce çalışır.
- around_create : Bir kayıt oluşturulurken çalışır.
- after_create : Bir kayıt oluşturulduktan hemen sonra çalışır.
- before_update : Bir veri güncellenmeden hemen önce çalışır.
- around_update : Bir veri güncellenirken çalışır.
- after_update : Bir veri güncellendikten hemen sonra çalışır.
- before_destroy : Bir veri yok edilmeden hemen önce çalışır.
- around_destroy : Bir veri yok edilirken çalışır.
- after_destroy : Bir veri yok edildikten hemen sonra çalışır.
- after_commit : Bir kayıt oluşturulduktan, yok ediltikten ve güncellendikten sonra çalışabilir.

Konu örneklendirmesi furkanapp içerisinde, product.rb dosyasında mevcuttur.
