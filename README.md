# priviahub-2022-cumhuriyet-uni-staj

## Ruby Variables ( Ruby Değişkenleri )

### Local Variables ( Yerel Değişkenler )
Yerel değişkenler sadece tanımlandığı blok içerisinde geçerlidir. "_" veya küçük harf ile başlamalıdır. Yerel değişkenler tanımlandığı kod bloğunun dışında kullanılırsa 'undefined local variable or method `a' for main:Object (NameError)' hatasıyla karşılaşılır.

### Global Variables ( Global Değişkenler )
Global değişkenler dolar simgesiyle başlar. Programın hangi aşamasında tanımlandığına bakılmaksızın kullanılabilir. Değer atanmadan önce çağırılırsa null değer döndürür

### Class Variables ( Sınıf Değişkenleri )
Tanımlandığı sınıfta ve tanımlanan sınıfın bütün alt sınıflarında ve nesnelerinde kullanılabilen değişkenlerdir. @@ ile başlarlar. 