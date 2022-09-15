=begin
    
Bir blok kod parçalarından oluşur.
Bir bloğa bir ad atarsınız.
Bloktaki kod her zaman parantez ({}) içine alınır.
Bir blok her zaman blokla aynı ada sahip bir fonksiyondan çağrılır. Bu, test adında bir bloğunuz varsa , bu bloğu çağırmak için fonksiyon testini kullandığınız anlamına gelir.
'yeild' kelimesini kullanarak bir blok çağırırsınız .

=end

#Örnek bir blok oluşturalım.
dizi = ["a", "b", "c"]
dizi.collect! {|e| e += "!"}
puts dizi.inspect
 
#bir diğer blok yazım şekli şöyledir:
dizi = ["a", "b", "c"]
dizi.collect! do |e|
    e += "#"
end
puts dizi.inspect

#---------------------------------------------
def metot(&blok)

    blok.call
end
metot {puts "blok kod"}
#Buradaki işlem & işareti kullanarak metota blok kod geçirebileceğimi bildirmiş olduk.
#call ile blok kod olarak yazmış olduğumuz kodu çağırdık.

def metot2(&blok)

    if block_given?
        block.call
    else
        puts "metot blok kod giydirilmeden çağırıldı."
    end
end

metot2 {puts "blok kod"}
metot2
#Bu yöntem ile uzun sürecek işlemleri kısa sürede halledebilriz.

#Şimdi elimizdeki verileri kontrol eden çiftlere 1 ekleyen bir örnek yapalım.
def ciftlere_ekleme_yap(arg)
    arg += 1 if arg.even?
    arg
end

veriler = [78,89,45,56,1,23,25,10,5,8]
yeni_veriler = []
veriler.each do |e|
    yeni_veriler << ciftlere_ekleme_yap(e)
end

puts yeni_veriler.inspect

#Bu örneği blok kod ile yazalım.
class Dizi
    def isle(&arg)
        self.each_with_index do |e, i|
            self[i] = arg.call(e)
        end
    end
end

veriler2 = [78,89,45,56,1,23,25,10,5,8]
veriler2.isle do |e|
    e.even? ? : e+=1 : e
end
puts veriler2.inspect


#Birde yield kullanarak blok oluşturabiliriz.
def blok
    puts "metot başladı"
    yield
    yield
    puts "metot bitti"
end

blok {puts "blok kod"}


