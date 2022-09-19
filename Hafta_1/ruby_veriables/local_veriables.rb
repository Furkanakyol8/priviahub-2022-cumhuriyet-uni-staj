=begin
Local veriables, küçük harf veya _ ile başlar. 
Local veriables kapsamı, sınıf, modül, def veya do'dan karşılık gelen sona veya bir bloğun açılış ayracından kapanış ayracına {} kadar değişir.
Başlatılmamış bir local veriables e başvurulduğunda, argümanı olmayan bir yönteme yapılan çağrı olarak yorumlanır.
Başlatılmamış local veriables e atama, değişken bildirimi olarak da işlev görür. Değişkenler, geçerli kapsamın sonuna ulaşılana kadar var olmaya başlar.
Yerel değişkenlerin ömrü, Ruby programı ayrıştırdığında belirlenir.
=end
class Ogrenci
    def initialize (id, ad, adres)
        @ogr_id = id
        @ogr_ad = ad       
        @ogr_adres = adres
    end

    # Bu örnekte id, ad, adres local veriables örneğidir.