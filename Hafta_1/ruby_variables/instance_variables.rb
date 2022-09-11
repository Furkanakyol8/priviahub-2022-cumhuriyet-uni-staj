class KrediKarti
    @para_miktari = 10000 # Anlık değişkeni 10000 olarak tanımladık

    def self.para
        puts "#{@para_miktari} TL"
    end
end

class Nakit < KrediKarti # Nakit classı, KrediKartı Classını miras aldı
    @para_miktari = 500  # Miras almasına rağmen anlık değişkeni yeniden tanımladık
end

KrediKarti.para()
Nakit.para()

# 10000 TL
# 500 TL       -----> çıktısını aldık. Yani anlık değişkenin değeri kullanıldığı yerde belirlenebilir.
