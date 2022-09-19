=begin
Bu değişkenler @@ ile başlar. 
Başlatılmamış bir sınıf değişkenine başvurmak bir hata üretir. Bu yüzden yöntem tanımlarında kullanılmadan hemen önce başlatılmalıdır. 
Sınıf değişkenleri, sınıf değişkenlerinin tanımlandığı sınıfın veya modülün alt öğeleri arasında paylaşılır.

=end

class Ogrenci
    @@no_of_ogrenci = 0
    def initialize (id, ad, adres)
        @ogr_id = id
        @ogr_ad = ad       
        @ogr_adres = adres
    end
    