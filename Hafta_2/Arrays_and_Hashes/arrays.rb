# Ruby de dizi oluşturmak için 3 farklı yöntem vardır 

dizi1 = [1, "a", -5] #Köşeli parantez kullanarak oluşturdugumuz dizinin elemanları arasına virgül koyarak atama yapabiliriz
dizi2 = Array.new(2, "a") #Array new ile oluşturduğumuz dizi de önce kaç elemandan oluşturacağımızı yazıyoruz sonra da içine hangi elemanı koyacağımızı söylüyoruz
dizi3 = %w{eleman1 eleman2 eleman3} #%w ile oluşturduğumuz dizide ki yazdığımız her eleman metin nesnesi olarak değerlendirir.

puts dizi1.inspect
puts dizi2.inspect
puts dizi3.inspect


#Ruby de dizilere birçok farklı şekilde erişim sağlayabiliriz şimdi bunlara bakalım.

dizi = ["a", "b", "c", "d"]
puts dizi[0]    #Dizilerde elemanlar eklenme sırasına göre sıra numarası alırlar ve dizinin ilk elemanı 0'dan başlar 

dizi[1] = "f" #Dizinin her hangi bir index de bulunan elamanının değerini bu şekilde değiştirebiliriz.  
puts dizi[1]

puts dizi[4] # Dizide bulunmayan bir indexdeki elemanı yazdırmak istersek nil yani boş deger döner.
puts dizi[4].nil?  # nil metodunu kullanarak o index de bir eleman olup olmadıgını kontrol edebiliriz.

puts dizi[1,2] #Dizide bulunan birden fazla elemana ulaşmak için indexlerini aralarına virgül koyarak yazmalıyız. 
dizi = ["a", "b", "c", "d", "e", "f"]
puts dizi[2..4].inspect #Dizide ki belli bir aralıktaki eleman grubuna, istenilen aralıktaki ilk elemanı yazıp .. koyduktan sonra son elemanı yazarız. 

puts dizi[-1] #Dizideki elemanlara negatif sayılar kullanarak tersten erişebiliriz, son eleman -1 ile başlar 
puts dizi.index("c") #Her hangi bir elemanın indexsine bu şekilde ulaşabiliriz.


#Ruby de dizilere eleman eklemenin ve çıkarmanın farklı yolları vardır şimdi bunlara örnekler üzerinden bakalım 

#Dizinin sonuna eleman eklemek için üç farklı yöntem vardır
dizi = ["a", "b", "c", "d", "e"]
dizi.push("f") 
puts dizi.inspect()
dizi << "g" 
puts dizi.inspect()
dizi += ["h"]  
puts dizi.inspect()

#Dizideki elemanların arasına insert metodunu kullanarak eleman ekleyebiliriz.
dizi.insert(3, "ç")#Hangi indexe eleman eklemek istediğimizi belirtiriz sonra elemanımızı yazarız
puts dizi.inspect()

dizi = ["a", "b", "c", "d", "e"]
dizi.pop #Dizinin sonundaki elemanı çıkarmak için
puts dizi.inspect()
dizi.shift #Dizinin başındaki elemanı çıkartır
puts dizi.inspect()
dizi.delete("c")#İstenilen elemanı çıkartır
puts dizi.inspect()


#Ruby de dizileri parçalama ve birleştirme yollarına bakalım. 

#Dizilerde parçalama işlemini slice metodunu kullanarak yapabiliriz
dizi = ["a", "b", "c", "d", "e"]
#Dizideki d ve e elemanını ayırmak için
dizi2 = dizi.slice!(3, 2) #İlk parametre ile nereden itibaren ikinci parametre ile kaç eleman alacağımızı belirtiriz
puts dizi.inspect
puts dizi2.inspect

#İki diziyi birleştirmek için + işaretini kullanabiliriz 
dizi3 = dizi + dizi2 
puts dizi3.inspect


#Ruby de dizilerin kesişimini, birleşimi ve farkını almaya bakalım.

ulkeler1 = ["Fransa", "Norveç", "Hollanda", "İspanya", "Rusya"]
ulkeler2 = ["İtalya", "Slovenya", "Fransa", "İspanya", "Polonya"]
  
#İki dizinin kesişimlerini alma
bosdizi = ulkeler1 & ulkeler2 # & işareti ile iki dizi arasındaki aynı olan elemanları bosdizi mize aktarır.
puts bosdizi.inspect

#İki dizinin birleşimini alma
bosdizi = ulkeler1 | ulkeler2 # | işareti ile ilk dizimizin bütün degerleri ile ilk dizimiz de olmayıp ikinci dizimiz de olan degerleri birleştirerek bosdizi mize aktarır. 
puts bosdizi.inspect

#İki dizinin farkını alma
gezdigim_ulkeler = ["Fransa", "İspanya"]
bosdizi = ulkeler1 - gezdigim_ulkeler #ulkeler1 bir dizimide bulunan ülkelerden gezdigim_ulkeler i çıkartarak bosdizi mize aktarır.
puts "Henüz gitmediğim ülkeler: #{bosdizi.inspect}"


#Ruby de dizileri sıralamaya bakalım

sayilar = [6,4,5,2,1,3]
harfler = ["b","c", "e", "a", "d"]

# Bu metot ile dizimizi küçükten büyüğe sıralar.
puts sayilar.sort!().inspect # ünlem işaretini kaldırsaydık [1, 2, 3, 4, 5, 6] bu şekilde yazardı
puts harfler.sort!().inspect
#Bu metot ile büyükten küçüğe dogru sıralama yaparız.
puts sayilar.sort!().reverse.inspect
puts harfler.sort!().reverse.inspect


#Çoklu dizileri bu şekilde oluşturabiliriz.
ay_hafta = [['Ocak', 'Şubat', 'Mart'], [1,2,3,4]]
puts "#{ay_hafta[0][1]} ayının #{ay_hafta[1][3]}. haftasındayız."