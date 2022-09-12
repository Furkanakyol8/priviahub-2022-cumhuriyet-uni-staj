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

## RVM 
RVM, sisteminizde Ruby’nin birden çok kurulumunu kurup yönetmenize imkan sağlar. 
Ayrıca farklı gem kümelerini yönetmek için de kullanılabilir.

## rbenv

ruby ile geliştirme yapanlar için bir versiyon yönetim aracı.
kısaca, geliştirme ortamında farklı ruby versiyonları ile çalışılmasını önleyerek, 
canlıda yaşanabilecek versiyon çakışmalarının önüne geçilmesini sağlıyor.

## Class Object

Sınıflar sayesinde programlar parçalara bölünür ve karmaşıklıgı azalır
Sınıf, bir nesnenin ne olacagının ayrıntılı bir açıklaması,tanımı ve şablonudur.

## Ruby Variables

### Class Variables
Sınıf değişkenleri, değişkenin tanımlandığı sınıfta ve onun bütün altsınıflarında kullanılabilir.
Sınıf değişkenleri @@ ile başlar.
Sınıf değişkenlerine kullanılmadan önce değer verilmelidir.Değer atanmamış sınıf değişkeni çağrıldığında derleyici hata olduğu uyarısı yapar.

### Global Variables
Global değişken, bütün programın her yerinden erişilebilecek değişkendir.
Global değişken adları $ simgesiyle başlar. 
Global değişkeni deger atanması yapılan satırdan önce kullanılırsa nil degeri döner.

### Instance Variables
Anlık değişken yalnızca üretilen nesne  içinde geçerlidir.
Ruby’de anlık değişkenlerin önüne @ simgesi konulur. 
Değer atanmamış anlık değişkenlerin öntanımlı değeri nil’dir.

### Local Variables

Local Variables(Yerel Değişkenler) küçük harf veya '_' ile başlar. 
Local Variables sadece tanımlandığı blok içerisinde kullanılabilir blok dışında kullanılamaz. 

## Conditional Statements

### if-elseif-else

if şartı sağlanırsa doğrudan if içerisindeki kodlar çalışır,
if şartı sağlanmadığı durumda elsif içerisindeki kodlar çalışır,
eğer hiç bir şart sağlanmıyorsa else içerisinde belirtilen kodlar çalışır.

### unless

unless işlemi if işleminin tersidir, kosulun false oldugu durumlarda çalışır.

### case-when

if-elsif-else işlemlerinin bir başka alternatifi olarak case işlemi kullanılır. Çok sayıda dallanma kontrolu gerekliyse kullanılır.

## Loops

### while

while döngüsünde koşulumuz true olduğu sürece çalışmaya devam eder.

### until

until, while döngüsünün tersidir. Yani koşul false olduğu sürece çalışmaya devam eder.

### for

for döngüsünde koşulumuz sağlandığı sürece çalışmaya devam eder.

### break

break komutu ile belirlenen koşul gerçekleştiğinde döngü sonlandırılır

### next

next komutu belirlenen koşul gerçekleştiğinde o anki koşul atlanır.

### redo

redo komutu ile belirlenen adımın tekrar edilmesi sağlanır.

### retry

retry komutu ile döngünün en başına dönülür ve döngü tekrar çalıştırılır.