=begin
   Ruby'de üye değişkenlere direk olarak erişilemez, üye değişkenlere ulaşmak için attribute metodlar kullanılır.
   attirbute metodlara aslında java, C# ve C gibi dillerde bulunan getter setter metodlar diyebiliriz
   attr_reader,değişkenin değerine erişmeyi sağlar.
   attr_writer, değişkenin değerinin değiştirilmesi olarak tanımlanır.
   attr_acceessor ise attr_reader ve attr_writer metodlarının yaptıgı işlemleri tek bir metodda yapar.
=end

class Araba
  def initialize(marka, renk)
     @marka = marka
     @renk = renk
  end
end
araba = Araba.new("Toyata","Kırmızı") #Araba sınıfından araba adında bir nesne oluşturduk ve değerlerini girdik.
puts araba.marka # undefined metod hatası alırız çünkü okuma yapabilecek bir metodu tanımlamadık.

class Araba
  def initialize(marka, renk) 
     @marka = marka
     @renk = renk
  end
   
  # Getter methods 
  def marka
     return @marka 
  end
   
  def renk
     return @renk 
  end
end

araba = Araba.new("Toyota", "Kırmızı")
puts araba.marka  # çıktısı "Toyota" olacaktır.
puts araba.renk # çıktısı "Kırmızı" olacaktır.
araba.renk = "Mavi" # undefined method hatası alırız, çünkü degerimizi güncelleyebilecek bir method tanımlamadık

class Araba
  def initialize(marka, renk) 
     @marka = marka
     @renk = renk
  end
   
  # Getter methods
  def marka
     return @marka 
  end
   
  def renk
     return @renk 
  end
   
  # Setter methods
  def marka=(yeni_marka)
     @marka = yeni_marka 
  end
   
  def renk=(yeni_renk)
     @renk = yeni_renk 
  end
end
araba.renk = "Mavi"
puts araba.renk #"Mavi"
puts araba.marka #"Toyota"
#Methodlarımızı oluşturduk. Artık istediğimiz gibi değerlerimize erişip onları güncelleyebiliriz

=begin
Eğer attr metodlarını kullanmazsak sınıfımıza yeni bir değişken eklemek istediğimizde bu metotları baştan yazmamız gerekir
O yüzden de bunun çok daha kolay yolu olan attr metodlarını kullanmalıyız.
=end

# Bazen değerlerimizin sadece okuma veya yazma işlemi yapmasını isteriz böyle durumlarda attr_reader ve attr_writer metodlarını kullanmalıyız.
class Araba
  attr_reader :marka, :renk
  attr_writer :marka, :renk 
   
  def initialize(marka, renk) 
     @marka = marka
     @renk = renk
  end
end

# Eğer degerimize hem erişip hemde güncelleme yapmak istiyorsak attr_reader ve attr_writer metodlarını kullanmak yerine attr_acceessor metodunu kullanmalıyız 
class Araba
  attr_acceessor :marka, :renk 
   
  def initialize(marka, renk) 
     @marka = marka
     @renk = renk
  end
end