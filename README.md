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