# parametresiz metot 
def test            # `def`, bir metot tanımlamak istedigimizi belirtiyor
                    # `test`, metodumuzun adı
    puts "Merhaba"  # `puts "Merhaba"` metodun gövdesidir 
end                 # `end` metodun sonu anlamına gelir


# parametreli metot
def topla (p1,p2,p3)    # `(p1,p2,p3)` parametre kısmıdır parantez içinde ve parantesiz olabilir
    puts p1+p2+p3
end

topla(3,4,5)  #bir metodu çagırmak istedigimizde parametre degerlerini, ister parantez içinde istersek de parantez olmadan girerek çagırmalıyız.

=begin
    Parametre alan bir metoda parametre her zaman göndermek zorunda değiliz
    Parametrelere öntanımlı deger ataması yaparak parametre yollamadan da kullanabiliriz.
=end
def merhaba (isim ="Berkay")
    puts "Merhaba #{isim}"
end

merhaba  #metodumuza parametre olarak herhangi bir deger göndermedik ama varsayılan bir deger atadığımız için çıktımız `Merhaba Berkay`

=begin
    Değişken sayıda parametre değeri alan metot örnegi
    Metodumuzun parametre kısmına * işareti koydugumuzda, bu parametrenin istenilen kadar değer içerebileceğini belirtir.
    fakat aynı tipteki verileri parametremize değer olarak göndermemiz gerekir
=end
def toplam (*p)
    genel_toplam = 0
    
    p.each do |e|
        genel_toplam += e
    end
    puts "Sayıların toplamı: #{genel_toplam}"
end
toplam 1,2,3,45,67,8,89,0

=begin
    Değişken sayıda parametre alan metot örneği
    Metodumuzun parametre kısmına ** işareti koydugumuzda, istenilen kadar parametre eklenebileceği belirtilir.
=end
def bilgiler(ad:Berkay,soyad:celik,**isimli_degiskenler)

    puts ad
    puts soyad
    puts isimli_degiskenler
end

bilgiler ad:"furkan",soyad:"akyol",ikinci_ad:"hasan",yas:36


=begin
    Class methodları bir class'ı new anahtar kelimesi ile oluşturmadan direkt kullanabilen methodlardır.
    Class methodlarını oluşturabilmemiz için 3 yöntem vardır 
=end
class Mesaj
    def Mesaj.merhaba(isim)  # Class ismini kullanarak class methodunu oluşturabiliriz.
        puts "Merhaba #{isim}"
    end

    # Instance Method
    def pc_acma
        puts "PC açılıyor"
    end
end

Mesaj.merhaba("Berkay") #Class adıyla oluşturduğumuz için merhaba methodunu Class dışında da kullanabiliyoruz.

=begin
    pc_acma methodu bir instance method olduğu için kullanılamaz ve 'undefined method' hatası verir.
    Instance methodları kullanmak için Mesaj classından bir nesne oluşturmamız gerekir.
=end
temp = Mesaj.new # Mesaj sınıfından bir nesne oluşturduktan sonra pc_acma metodumuza erişebiliriz.
temp.pc_acma


class Mesaj
    def self.merhaba(isim)  # self anahtar kelimesini kullanarak class methodunu oluşturabiliriz.
        puts "Merhaba #{isim}"
    end
end

Mesaj.merhaba("Berkay")


#Bir class içerisine yazdığımız tüm methodların class method olmasını istediğimiz durumlarda ise 'class << self' ifadesini kullanabiliriz.
class Selamla
    class << self   ## class << self bloğu altında yazdığımız her method aslında bir class method olarak tanımlanır.
        def merhaba(isim= "Yabancı")
            puts "Merhaba #{isim}"
        end
    end
end

Selamla.merhaba("Berkay")
=begin
    Bir veya birkaç class metodu tanımlamak için "def self.method" yöntemini kullanmak iyidir. 
    Fakat birçok class metodu tanımlaması yapmak gerekiyorsa "class << self" blokunu kullanarak, tüm class metotlarını bu blokta oluşturulabilir
=end
