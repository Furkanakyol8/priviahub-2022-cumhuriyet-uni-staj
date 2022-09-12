class Personel
    @@personel_sayisi = 0
    
    def personel_bilgileri(ad,soyad,meslek)
        @personel_adi = ad
        @personel_soyadi= soyad
        @personel_meslek = meslek
        @@personel_sayisi += 1
    end
    def toplam_personel
        puts "Toplam personel sayısı: #@@personel_sayisi"
    end
end

p1 = Personel.new
p1.personel_bilgileri("Furkan","Akyol","Boyacı")
p2 = Personel.new
p2.personel_bilgileri("Barış","Yazman","Öğrenci")

class Ogrenci < Personel    #Ogrenci sınıfına Personel sınıfını miras olarak verdik
    def isim_yazdir
        puts "Personel adı ve soyadı: #@personel_adi #@personel_soyadi" #Personel bilgilerini başka bir class'da kullanabiliriz yani sınıf değişkenleri alt sınıflarda da kullanılabilir.
    end
end

o1 = Ogrenci.new
o1.personel_bilgileri("Seyfullah","Seyfi","Öğrenci")
o1.isim_yazdir()
o1.toplam_personel()