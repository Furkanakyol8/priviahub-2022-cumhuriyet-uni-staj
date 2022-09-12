class Ogrenci

    def ogrenci_bilgileri(adi,bolum,gano)
        @ogrenci_adi=adi
        @ogrenci_bolum=bolum
        @ogrenci_gano=gano
    end
end
o1 = Ogrenci.new
o1.ogrenci_bilgileri("Hasan","İnşaat",2.34)
o2 = Ogrenci.new
o2.ogrenci_bilgileri("ahmet","Eczacılık",3.15)