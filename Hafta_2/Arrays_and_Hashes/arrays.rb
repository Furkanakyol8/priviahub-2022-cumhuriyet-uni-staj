=begin
    Diziler içine bir çok değer ekleyebildiğimiz bir nesne türüdür.
    Ruby'de dizi içerisine metin değerleri, sayısal değerler, hatta geriye değer döndüren bir metot bile eklenebilir.
    Eklenen her dizi elemanı bir sıra numarası alır ve ilk eleman sıfırdan başlar. (index)
    Üç farklı yöntemle dizi oluşturulabilir
=end

dizi1 = [1, "Furkan", -5]
dizi2 = Array.new(2,"Akyol")
dizi3 = %w{Ne Mutlu Türküm Diyene}

puts dizi1.class, dizi2.class, dizi3.class # => class methoduyla Array tipinde olduklarını görebiliriz.

puts dizi1.inspect  # inspect methoduyla dizilerimizin içeriğini görüntüleriz.
puts dizi2.inspect
puts dizi3.inspect




# dizilere erişim yollarından örnekler üzerinde bahsedelim
dizi = ["a","b","c","d"]
puts dizi[0] # dizinin sıfırıncı indexine, yani ilk elemanına ulaşmamızı sağlar. 'a' çıktısı verecektir.

#peki ya olmayan bir indexi çağırmak istersek?
puts dizi[4].nil?  #rubyde olmayan indexler hata vermez, nil değer döndürür. kontrol etmek için 'nil?' methodunu kullanabiliriz.

# dizi içerisindeki bir aralığa erişmek istiyorsak;
dizi = ["a","b","c","d","e","f","g","h"]
puts dizi[2..4].inspect     #2. ve 4. indexler de dahil olmak üzere tüm aralığa erişmemizi sağlar.

# dizinin elemanlarına tersten erişmek için ise negatif indexler belirtmeliyiz;
puts dizi[-1] # dizinin son elemanına erişiriz.

# dizi içerisinde bildiğimiz bir elemanın kaçıncı indexte tutulduğunu öğrenmek için de bir methodumuz mevcut
puts dizi.index("c")




# dizilerin sonuna eleman eklemek için çeşitli yöntemler vardır. Bu yöntemleri kullanarak dizilerimize eleman ekleyelim
dizi = ["a","b","c","d"]
dizi.push("e")
dizi << "f"
dizi += ["h"]
puts dizi.inspect   # => ["a", "b", "c", "d", "e", "f", "h"]

# Dizinin elemanları arasına yeni bir eleman eklemek istersek 'insert' methodunu kullanabiliriz.
dizi.insert(3, "ç") # virgülden önce kaçıncı indexe eklemek istediğimizi, sonra da neyi eklemek istediğimizi belirtiyoruz.
puts dizi.inspect   # ["a", "b", "c", "ç", "d", "e", "f", "h"]





# Diziye eleman eklemeyi öğrendik şimdi de çıkarmayı öğrenelim (pop)
dizi = ["a","b","c","d","e"]
dizi.pop    # diziden son elemanı çıkarmamızı sağlar
puts dizi.inspect   # => ["a", "b", "c", "d"]
dizi.shift  # diziden ilk elemanı çıkarmamızı sağlar
puts dizi.inspect   # => ["b", "c", "d"]
dizi.delete("c") # dizi elemanlarını biliyorsak belirttiğimiz elemanı siler
puts dizi.inspect   # => ["b", "d"]




# Bir diziyi parçalayarak iki ayrı dizi oluşturmak istiyorsak 'slice!' methodunu kullanabiliriz.
dizi1 = ["a","b","c","d","e","f","g","h"]
dizi2 = dizi1.slice!(3,4)    # virgülden önceki değer kaçıncı indexten itibaren parçalayacağımızı, sonraki değer kaç eleman kadar parçalayacağımızı gösterir.
puts dizi1.inspect           # eğer 'slice!' değilde 'slice' kullansaydık dizi1'in elemanları eksilmez, sadece dizi2'ye kopyalanmış olurdu.
puts dizi2.inspect
# => ["a", "b", "c", "h"] ve ["d", "e", "f", "g"] çıktılarını alırız.

# Dizeleri birleştirmek için basitçe '+' operatörünü kullanmamız mümkündür.
dizi3 = dizi1 + dizi2
puts dizi3.inspect # => ["a", "b", "c", "h", "d", "e", "f", "g"]




# Dizilerde Kesişim, Bileşim ve Fark alma konusunu anlatmak için örnek dizilerimizi oluşturalım.
sehirler1 = ["Giresun", "Antalya", "İstanbul", "Ankara", "Eskişehir", "Bursa"]
sehirler2 = ["Trabzon", "Diyarbakır", "Muğla", "Giresun", "Ankara"]

# Kesişim alma
bosdizi = sehirler1 & sehirler2 # '&' işareti ile iki dizide de var olup kesişen elemanları elde ederiz
puts bosdizi.inspect    # => ["Giresun", "Ankara"]

# Bileşim alma
bosdizi = sehirler1 | sehirler2 # '|' işareti ile kesişen elemanları bir kere değerlendirir ve iki diziyi birleştirir.
puts bosdizi.inspect    # => ["Giresun", "Antalya", "İstanbul", "Ankara", "Eskişehir", "Bursa", "Trabzon", "Diyarbakır", "Muğla"]

# Farkını alma
gezdigim_sehirler = ["İstanbul", "Bursa"]
bosdizi = sehirler1 - gezdigim_sehirler # '-' işareti ile farkını alıyoruz.
puts "Henüz gezmediğim şehirler: #{bosdizi.inspect}"    # => ["Giresun", "Antalya", "Ankara", "Eskişehir"]




# Dizi elemanlarını gezme ve işlem yapma konusunu anlatmak için basit bir örnek kullanalım;
sayilar = [1,2,3,4,5]

sayilar.each do |s|     # .each yardımıyla dizinin elemanlarında gezindik ve her elemanı karesiyle çarptık
    puts s **2
end     # => alt alt "1,4,9,16,25" çıktısını alırız.



# Dizilerin elemanlarını sıralama (sort)
sayilar = [8,4,5,9,0,13,2]
harfler = ["b","z","f","g","i"]

puts sayilar.sort!().inspect    # 'sort!' methodu ile sayılarımızı küçükten büyüğe sıralarız. [0, 2, 4, 5, 8, 9, 13]
puts harfler.sort!().inspect    # 'sort!' methodu ile harflerimizi ilkten sona sıralarız. ["b", "f", "g", "i", "z"]




# Çok boyutlu dizi oluşturma
ay_hafta = [["Ocak", "Şubat", "Mart"], [1,2,3,4]]   # Çok boyutlu dizimizi oluşturduk.
puts "#{ay_hafta[0][1]} ayının #{ay_hafta[1][2]}. haftasındayız. "  # ilk index diziyi, ikinci index dizinin elemanını temsil eder.
# => Şubat ayının 3. haftasındayız.


=begin
    -Array oluşturma ve Arraylara erişme yöntemleri
    -Array'lara eleman ekleme ve çıkarma işlemleri
    -Array'leri parçalama ve birleştirme işlemleri
    -Array'lerin kesişim, bileşim ve farklarını alma
    -Array'lerin elemanları üzerinde gezinme ve dizi elemanlarıyla çeşitli işlemler yapma
    -Array elemanlarını sıralama
    -Çok boyutlu Array oluşturma

    Konularını açıklamalar ve örneklerle birlikte anlattık. Ancak ruby'de diziler üzerinde uygulanan çok daha fazla method ve işlemler de bulunur.
=end