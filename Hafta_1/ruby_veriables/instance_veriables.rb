=begin
    
Örnek değişkenleri @ ile başlar. 
Başlatılmamış örnek değişkenleri nil değerine sahiptir ve -w seçeneğiyle uyarılar üretir.
    
=end
 
class Ogrenci
    def initialize (id, ad, adres)
        @ogr_id = id
        @ogr_ad = ad       # Burada örnek değişkenlerimzi @ ifadesi ile başlayan kısımlaedır.
        @ogr_adres = adres
    end
    def display_details()
    puts "Öğrenci id #@ogr_id"
    puts "Öğrenci adı #@ogr_ad"
    puts "Öğrenci adresi #@ogr_adres"
  end
end

