#Diziler herhangi bir nesenin sıralı, tamsayı dizinli koleksiyonlarıdır. Örnek bir Array oluşturalım.
diziler = Array.new #içine değer atamadan boş bir satır oluşturmuş olduk.
diziler = ["1", "2", "3"...] #içine değer atayarak diziler adında bir dizi oluşturmuş olduk.
diziler = Array.[](1,2,3,4)
#üç şekildede dizi oluşturulabilir.

diziler = Array.new(15)
puts diziler.size
puts diziler.length
#Diziler 15 öğelik boyuta sahiptir. Dizinin boyutunu size veyaz length yöntemleriyle dönderebiliriz.

array = Array.new(3) 
#Dizileri oluşturuken kaç adet eleman olacağını(dizi boyutunu) ve hangi elemanların olacağını belirleyebiliriz. Mesela burada [nil,nil,nil] şeklinde çıktı alırız.

dizi = Array.new(15) { |e| e = e * 2 }
puts "#{dizi}"
#Her öğeyi bloğun değerlendiriği şeyle doldurarak yeni bir blok oluşturabiliriz.

#Ruby yalnızca tek bir bağımsız değişkeni kabul eden bir Array yöntemine sahiptir. Bir sayı dizisi oluşturmak için argüman olarak belirtilen aralığı alır.
dizi = Array(0..10)
puts "#{dizi}"
#Çıktıda 0 dan başlayıp 10 a kadar olan sayıları yazacaktır.
#Dizimize herhangi bir değer eklemek veya var olan değeri değiştirmek için ise örneğe bakalım.
dizi[11] = 9 #şeklinde hangi elemanın hangi değere sahip olacağını belirtiriz.

#Array Metotları

#at 
dizi = ["1", "2", "3", "4", "5"]
dizi.at(0) #çıktısı 1 olur. 0. elemanı gösterir.
dizi.at(-1) #çıktısı 5 olur, sondan ilk elemanı gösterir.

#clear
dizi.clear #çıktısı [] boş bir dizidir.

#collect!
dizi.collect! {|x| x+"!"} #çıktısı dizinin elemanlarının yanına ünlem eklenmiş halidir. ["1!", "2!", "3!", "4!", "5!"]

#combination
dizi = [1,2,3,4,5]
dizi.combination(1).to_a  #çıktısı [[1], [2], [3], [4], [5]]
dizi.combination(2).to_a #çıktısı [[1,2], [1,3], [1,4], [1,5], [2,3], [2,4], [2,5], [3,4], [3,5], [4,5]]
#Yani combination metotu dizideki elemanların argüman olarak belirtilen sayı kadar kombinasyonunu oluşturur.

#compact! 
#bu metot dizinin içindeki boş değerleri temizler.
[1,2,nil, "sivas"].compact! #çıktısı [1,2,"sivas"] olacaktır.

#concat
#iki diziyi birleştirmeye yarar.
["1", "2"].concat(["3"]) #çıktısı ["1", "2", "3"] şeklinde olur.

#count
#dizideki eleman sayısını belirtir. Birde parametre olarak dizideki eleman belirtilirse sadece o elemanı sayar.
dizi = [3,5,7,7]
dizi.count #çıktısı 4'tür.
dizi.count(7) #çıktısı 2 tane 7 olduğu için 2 olur.

#delete
#belirtilen elemandan dizideki ne kadar varsa hepsini siler.
dizi = [1,2,3,4]
dizi.delete(2)
dizi # çıktısı [1,3,4] olur.

#delete_at
#belirtilen indeksteki elemanı diziden siler.
dizi = ["a", "b", "c"]
dizi.delete_at(2) 
dizi #çıktısı ["a", "c"] olur.

#delete_if
#blok içine yazdığımız koşul doğru olduğu sürece elemanlara işlem yapar. Koşul vardır.
sonuc = [85,45,70]
skor.delete_if {|s| s < 70 } #bir sonuc dizisi oluşturdum ve sonra delete_if komutu ile 70'ten küçük olan sayıları sil. Çıktımız [85,70] şeklind eolur.

#drop
#parametre olarak belirtilen elemanı dizide arar,bulur. Bulduktan sonrasındaki elemanları yeni bir dizi olarak döndürür.
dizi = ["a", "b", "c", "d", "e"]
dizi.drop(2) #2.elemanımız c dir. Bu yüzden çıktı ["d", "e"] şeklinde olur.

#drop_while
#Mevcut koşul false veya nil olmadığı sürece elemanları gezer ve yeni bir dizi oluşturu.
dizi = [1,2,3,4,5]
dizi.drop_while {|a| a < 3 } #çıktısı [3,4,5] olur.

#each
#dizideki bütün elemanları gezip işlem yapar. Elemanın kendisine göre işlem yapar.
dizi = ["a", "b", "c"]
dizi.each {|a| print a, "--"} #çıktısı a--, b--, c-- olur.

#each_index
#each komutundan farkı elemanın index numarasına göre işlem yapar.
#each_with_index
dizi = ["a", "b", "c"]
dizi.each_with_index{|e, i| puts "Eleman: #{e}, indeks: #{i}"}
#çıktısında eleman: a indeks:0,  eleman: b indeks: 1, eleman: c indeks:2 şeklinde olur.

#empty?
#dizinin içinde eleman olup olmadığını sorgular. True ya da false döndürür.
dizi = [1,2,3,4]
dizi empty? #dizi boş mu? => false değeri döner.

#fetch
#belirtilen indeksteki elemanını döndürür. Eğer eleman yoksa bir uyarı mesajı yazar.
dizi = [3,5,7,9,11]
dizi.fetch(3) #çıktımız 9 olur.
dizi.fetch(5, "boş") #çıktımız boş olur. Çünkü 4 elemanlı bir dizidir. 5.elaman yok. 

#fill
#diziyi argüman olarak verilen değerlerle doldurur.
dizi = ["a", "b", "c"]
dizi.fill("v") #çıktımız ["v", "v", "v"] şeklinde olacaktır.
dizi.fill("y", 2, 2 ) #çıktımızda ["v", "v", "y", "y"] olur. Yapılan işlem, dizinin içini y ile doldur ama 2.elemandan başlar ve iki defa yazar. 

#first
#dizideki ilk elemanı verir. Argüman belirtilirse ilk elemandan başlayarak belirtilen kadar elemanı döndürür.
dizi = ["a", "b", "c", "d"]
dizi.first #çıktısı "a" olur.
dizi.first(2) #çıktısı ["a", "b"]

#flatten!
#dizi içinde kurulmuş dizileri tek bir dizi haline getirir.
a = [1,2,3]
b = [4,5,6, [7,8]]
c = [a, b, 9, 10, 11]
c.flatten! #çıktımız [1,2,3,4,5,6,7,8,9,10,11]

#include?
#argüman olarak belirtilen değeri dizi içinde arar. Bulursa true bulamazsa false sonucunu döndürür.
dizi = ["a", "b", "c", "d"]
dizi.include?("b") #çıktısı false olur.

#index
#argüman olarak belirtilen elemanın dizi içindeki indeksini verir. Blok kod yazarsak eşlenen tüm elemanların indeksini verir.
dizi = ["a", "b", "c", "d"]
dizi.indeks("b") #çıktımız 1 olur.

#insert
#belirtilen indeks numarasına istediğimiz değeri verebiliriz.
dizi = %w{a b c d}
dizi.insert(2, 10) #çıktısı ["a", "b", "10", "c", "d"]

#join
#argümansız olarak kullanımda dizideki tüm elemanları birleştirip tek eleman olarak verir. Ya da belirlenen argümana göre birleştirme yapar.
["a", "b", "c"].join("-") #çıktısı "a-b-c-" olur.

#keep_if
#belirtilen koşula uyan elemanları diziden siler.
dizi = %w{a b c d e f }
dizi.keep_if {|e| e =~ /[aeiou]/ } # çıktımız ["a", "e"] şeklinde olur.

#last
#dizideki son elemanı verir. argüman verilirse verilen kadar elamanları döndürür.
dizi = [1,2,3]
dizi.last # çıktımız 3 olur.
dizi.last(2) #çıktımız ["2", "3"]

#length
#dizideki eleman sayısını verir. size ile aynıdır.

#map!
#dizideki elemanları gezer ve blok olarak belirttiğimiz koda göre işlem yapar.
dizi = ["a", "b", "c", "d"]
dizi.map!{|e| e + "!"} #çıktısı ["a!", "b!", "c!", "d!"] şeklinde olur.

#pop
#dizideki son elemanı siler. Parametre verirsek belirtilen kadarını sondan siler.
dizi = ["a", "b", "c", "d"]
dizi.pop(2) #çıktı ["b", "c"]

#push
#dizinin sonuna değer eklemimizi sağlar.
dizi.push("e", "f") #["a", "b", "c", "d", "e", "f"]

#replace
#argüman olarak verilen değerler dizideki değerlerle yer değğişir.
dizi = ["a", "b", "c", "d", "e", "f"]
dizi.replace(["x", "y", "z"]) #çıktımız ["x", "y", "z"]

#reverse
#dizideki değerleri tersine çeviri.
["a", "b", "c"].reverse!() #çıktısı ["c", "b", "a"]

#shift
#dizideki ilk elemanı siler.
dizi = ["a", "b", "c", "d", "e", "f"]
dizi.shift() #çıktısı ["b", "c", "d", "e", "f"]

#shuffle!
#dizideki elemanları karıştırır.
dizi = [1,2,3]
dizi.shuffle!() # çıktısı [2,3,1] ya da [3,2,1] ya da [2,1,3] olabilir.

#size
#length metotu ile aynıdır, dizideki eleman sayısını söyler.

#slice!
#belirtilen indeksteki elemanı siler.
dizi = ["a", "b", "c"]
dizi.slice!(1) #çıktısı ["a", "c"]

#sort!
#dizideki elemanları alfabetik ya da sayısal olarak sıralar.
dizi = ["c", "b", "a"]
dizi.sort! # çıktısı ["a", "b", "c"] olur.

#uniq!
#dizide bulunan aynı elemanlardan bir tanesi kalır, diğerlerini siler.
dizi = ["a", "a", "b", "b", "c"]
dizi.uniq!() #çıktısı ["a", "b", "c"] olur.

#unshift
#argüman olarak belirtilen değeri dizinin başına ekler.
dizi = ["a", "b", "c"]
dizi.unshift("1") #çıktısı ["1", "a", "b", "c"] olur.

#zip
#diziye argüman olarak verilen başka dizileri düzenleyerek ekler.
a = [4,5,6]
b = [7,8,9]
[1,2,3].zip(a,b) # çıktısı [[1,4,7], [2,5,8], [3,6,9]] şeklindedir.
