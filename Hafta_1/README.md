# priviahub-2022-cumhuriyet-uni-staj

## Kurulumlar
Kurulumları yaparken adımlarını uyguladığım dökümantasyonları linkleriyle birlikte paylaşacağım.

Rbenv Ruby ve Rails Kurulum Link
https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-20-04

Ruby on Rails PostgreSQL Kurulum ve Proje Oluşturma link
https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-ubuntu-18-04

Wsl Download Web Site
https://www.configserverfirewall.com/windows-10/wsl-2-requires-an-update-to-its-kernel-component/

Microsoft Windows Subsystem Linux ve Kernel Update link
https://docs.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package

Git install Link
https://git-scm.com/book/en/v2/Getting-Started-Installing-Git


## rbenv
Bir versiyon yönetim aracı. kısaca, geliştirme ortamında farklı ruby versiyonları ile çalışılmasını önleyerek, canlıda yaşanabilecek versiyon çakışmalarının önüne geçilmesini sağlar.

## rvm
Ruby version manager.
Basit bir komut satırı uygulaması
Sisteme aynı anda birden fazla Ruby sürümü kurmayı sağlar.
versiyonlar arasında geçiş yapmamıza olanak tanır.


## Class, Objects
Kısaca;
Sınıf isimleri mutlaka büyük harf ile başlamalıdır.
Sınıflar tanımlanırken class sözcüğü kullanılır
Sınıf içinde oluşturulan değişkenler dışarıda kullanılamaz. Aynı şekilde sınıf dışında oluşturulan yerel değişkenler dışarıda kullanılamaz. (Sabitler ve global değişkenler hariç)


## Ruby Variables ( Ruby Değişkenleri )

### Local Variables ( Yerel Değişkenler )
Yerel değişkenler sadece tanımlandığı blok içerisinde geçerlidir. "_" veya küçük harf ile başlamalıdır. Yerel değişkenler tanımlandığı kod bloğunun dışında kullanılırsa `undefined local variable or method 'a' for main:Object (NameError)` hatasıyla karşılaşılır.

### Global Variables ( Global Değişkenler )
Global değişkenler dolar simgesiyle başlar. Programın hangi aşamasında tanımlandığına bakılmaksızın kullanılabilir. Değer atanmadan önce çağırılırsa null değer döndürür

### Instance Variables ( Anlık Değişkenler)
Sadece üretilen nesne içerisinde geçerlidir. Ön tanımlı değeri nildir. Başka bir sınıfa kalıtım yoluyla aktarılsa da, değişken değeri aktarılmaz.

### Class Variables ( Sınıf Değişkenleri )
Tanımlandığı sınıfta ve tanımlanan sınıfın bütün alt sınıflarında ve nesnelerinde kullanılabilen değişkenlerdir. @@ ile başlarlar. 


## Conditional Statements

### İf-elseif-else 
if şartı sağlanırsa doğrudan if içerisindeki kodlar çalışır,
if şartı sağlanmadığı durumda else if içerisindeki kodlar çalışır,
eğer hiç bir şart sağlanmıyorsa else içerisinde belirtilen kodlar çalışır.

### Unless
if ifadesinin tersidir, içerdiği kod bloğu yalnızca şart ifadesi yanlışsa yürütülür.

### Case 
case yapılarını, çok seçenekli alternatif if yapıları gibi düşünebiliriz.


## Loops 

For, Loop, Until ve While döngülerini kodlar içerisinde kısaca anlattım.