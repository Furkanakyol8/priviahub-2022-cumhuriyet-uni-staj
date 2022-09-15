=begin
    Ruby blokları methodların içine atılabilen küçük fonksiyonlardır.
    Bloklar bir "do / end" ifadesine veya "{}"" parantezleri arasına alınır ve birden çok parametreye sahip olabilirler.
    Parametre isimleri iki adet '|' işaretleri arasında belirlenir. ==> |number|
    Ruby blokları kodları kaydetmeye ve sonradan kullanmaya izin verdiği için kullanışlıdır.
=end

# Form 1: Tek satırlık bloklar için uygulama şekli
[1, 2, 3].each { |num| puts num }

# Form 2: Çok satırlı bloklar için uygulama şekli
[1, 2, 3].each do |num|
    puts num
end






=begin
    Yield; kullanıldığında bir bloğu çağıran ruby anahtar sözcüğüdür.
    Yield anahtar sözcüğü kullanıldığında bloğun içindeki kod çalışır ve işlemleri gerçekleştirir.
    Örnekler üzerinde inceleyelim.
=end

def print_once
    yield
end 
print_once {puts "Blok çalıştırılıyor"} # => Ekrana bir adet "Blok çalıştırılıyor" yazdırır.


def print_twice
    yield
    yield
end
print_twice {puts "Blok çalıştırılıyor"} # => yield anahtar kelimesi iki defa kullanıldığı için iki kere "Blok çalıştırılıyor" yazdırır.


# Daha iyi anlamak için 10'la çarpan bir örnek yapalım.
def onla_carp
    yield 1
    yield "Furkan"   # Yield anahtar sözcüğüne farklı veri tiplerinde değişkenler gönderilebilir.
    yield 7
end
onla_carp { |variable| puts variable * 10 } # => "10, FurkanFurkanFurkan... ,70" çıktısını verecektir.

# Son örneğimizi blok yapısı kullanmadan da yapalım ki bloklar ve işlevleri iyice anlaşılsın.
def onla_carpma(a,b,c)
    puts a *10, b*10, c*10
end
onla_carpma(1,"Furkan",7)   # => "10, FurkanFurkanFurkan...,70" çıktısını yield kullanmadan alıyoruz.





=begin
        
Explicit blok, parametre listemizde bir ad verebilmemizi sağlar.
Explicit bir bloğu başka bir yönteme geçirebilir veya daha sonra kullanmak üzere bir değişkene kaydedebilirsiniz.
örnek üzerinde inceleyelim.

=end
def explicit_block(&block)
    block.call      # yield anahtar sözcüğü ile aynı işlevi görür fakat isim verebilmemizi sağlar.
    block.call
end
explicit_block { puts "Explicit blok çağırıldı" } # => iki defa "Explicit blok çağırıldı" yazdıracaktır.
