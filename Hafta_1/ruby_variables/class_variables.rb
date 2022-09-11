class Kus
    @@kus_sayisi = 0 # sınıf değişkeni olarak kuş sayısı tanımlandı

    def kus_bilgileri(renk, tur, cinsiyet)
        @kus_rengi = renk
        @kus_turu = tur
        @kus_cinsiyet = cinsiyet
        @@kus_sayisi += 1
    end

    def toplam_kus
        puts "Toplam Kuş Sayısı: #{@@kus_sayisi}"
    end
end

# sınıf değişkeni ne kadar nesne oluşursa oluşsun tüm nesneler için kullanılabilir.
k1 = Kus.new
k1.kus_bilgileri("mavi", "papagan", "erkek")
k1.toplam_kus()

k2 = Kus.new
k2.kus_bilgileri("siyah", "karga", "disi")
k2.toplam_kus()