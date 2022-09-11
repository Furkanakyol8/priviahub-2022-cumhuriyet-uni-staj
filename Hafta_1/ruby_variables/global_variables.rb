class Test
    def yazdir
        $global_degisken = 1  # Test class'ı içerisinde yazdır methodunda tanımlanmış bir global değişken
        puts "Test sınıfı içindeki değer: #{$global_degisken}"
    end
end

class BirArttir
    def arttir
        $global_degisken += 1
        puts "değer bir arttırıldı. Yeni değer: #{$global_degisken}"  # BirArttir class'ı içerisinde de tekrar tanımlanmadan global_degisken kullanılabilir
    end
end

t1 = Test.new
t1.yazdir()

t2 = BirArttir.new
t2.arttir

# Test sınıfı içindeki değer: 1
# değer bir arttırıldı. Yeni değer: 2    -----> kodumuzu çalıştırdığımızda elde edeceğimiz çıktı.
