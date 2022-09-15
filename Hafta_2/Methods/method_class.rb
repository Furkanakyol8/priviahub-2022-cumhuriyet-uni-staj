=begin
    Class methodları bir classı new anahtar kelimesi ile oluşturmadan direkt kullanılabilen methodlardır.
    Örnekler üzerinde inceleyelim..
=end

class Islemler

    # Class Method
    def self.selamla  #self anahtar kelimesiyle class method olarak oluşturulur. 'Selamla.selamla' yani classın ismiyle de oluşturabilirdik.
        puts "Selamlar..."
    end

    # Instance Method
    def pdf_donusturucu
        puts "PDF'e dönüştürüldü..."
    end
end

Islemler.selamla #self anahtar kelimesiyle oluşturduğumuz için selamla methodunu Class dışında da kullanabiliyoruz.
#Islemler.pdf_donusturucu #pdf donusturucu methodu bir instance method olduğu için kullanılamaz ve 'undefined method' hatası verir.


#Instance methodları kullanmak içinse Islemler classından bir nesne oluşturmamız gerekir. Örneğin;
i = Islemler.new
i.pdf_donusturucu


#Bir class içerisine yazdığımız tüm methodların class method olmasını istediğimiz durumlarda ise 'class << self' ifadesini kullanabiliriz. Örneğin;
class Selamla
    class << self
        def merhaba(isim= "Yabancı")
            puts "Merhaba #{isim}"
        end

        def naber(isim = "Furkan")
            puts "Naber #{isim}"
        end
    end
end

Selamla.merhaba
Selamla.naber
# class << self bloğu altında yazdığımız her method aslında bir class method olarak tanımlanır. Çok fazla class method tanımlamamız gerektiğinde kullanılabilir.