puts "#$isim birinci durum"  #  Değer atanmamış global değişkenlerin öntanımlı değeri nil’dir.
$isim = "berkay"
puts "#$isim ikinci durum"

puts "Atamadan önceki değer : #$sayi" 

class Test
    def yazdir
        $sayi = 10
        puts "Test sınıfı içerisindeki global değişken değeri: #$sayi"
    end
end
class DegeriBirArttir
    def yazdir
        $sayi += 1
        puts "Değer bir arttırıldıktan sonraki global değişken değeri: #$sayi"
    end
end
t1 = Test.new
t1.yazdir()
t2 = DegeriBirArttir.new
t2.yazdir()