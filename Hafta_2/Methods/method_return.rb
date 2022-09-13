=begin

Şimdiye kadar yazdığımız methodlar geriye bir değer döndürmeyip sadece işlem yapıyordu. Şimdi ise methodlar bize bir değer döndürecek.
Methodların bize bir değer döndürmesini istiyorsak bunu iki farklı yolla yapabiliriz;
    1-) Methoddan geriye sadece bir adet değer dönmesini istiyorsak, gönderilmesini istediğimiz değeri methodun en sonuna yazarız
    2-) Bir veya birden fazla değer dönmesini istiyorsak da 'return' anahtar kelimesini kullanabiliriz.

Şimdi örnekler üzerinden anlatmaya devam edelim

=end

def hesapla(maas, yuzdelik_zam)
    zam_miktari = maas * yuzdelik_zam.fdiv(100) #küsüratlı bir sayı oluşacağından dolayı bölme işlemi için 'fdiv' kullandık
    maas += zam_miktari
    maas    # Methoddan geriye sadece maaş dönmesini istediğimiz için, methodumuzun sonuna 'maas' yazdık.
end

zamli_maas = hesapla(1000,10)
puts "İlk maaş: 1000 TL \nZam sonrası maaş: #{zamli_maas} TL"
# Bu örnekte hesapla isimli methodumuz 'maas' ve 'yüzdelik_zam' isimli iki parametre alıyor.
# Methodumuzun gövdesinde ise ne kadar zam yapıldığını hesaplıyor, yapılan zammı maaşa ekliyoruz.
# Methodumuzun bize değer olarak güncel maaşı dönmesini istediğimiz için en sona 'maas' yazarak methodu tamamlıyoruz.
# Artık hesapla methodumuz, belirlediğimiz parametrelere göre bize zamlı maaşı verir. 'zamli_maas' değişkenine methodumuzu atıyoruz.
# Sonrasında ekrana güncel zamlı maaşımızı yazdırıyoruz. Ve bu kadar :)



# Şimdi ise birden fazla değer dönmesini istediğimiz methodları anlatmak için aynı örnek üzerinden devam edelim.

def hesapla2(maas, yuzdelik_zam)
    zam_miktari = maas * yuzdelik_zam.fdiv(100)
    maas += zam_miktari
    return maas, zam_miktari #hesapla2 methodunun hem maaşı hem de yapılan zam miktarını döndürmesini sağladık.
end

zamli_maas2 = hesapla2(1000,10) #hesapla2 methodunda iki farklı değer döndürüldüğü için bu değerler array olarak atanır.
puts "İlk maaş: 1000 \nZamlı maaş: #{zamli_maas2[0]} \nYapılan zam miktarı: #{zamli_maas2[1]}"
# zamli_maas2[0] yani zamli_maas'in 0. indexinde maaş tutulur. zamli_maas2[1] yani zamli_maas'in 1. indexinde zam miktarı tutulur.
 


