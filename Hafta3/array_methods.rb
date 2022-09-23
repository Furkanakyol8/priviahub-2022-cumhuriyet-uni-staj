=begin
ary & other_ary → new_ary
iki dizide ortak değerleri bu şekilde bulabiliriz.
=end
[ 1, 1, 3, 5 ] & [ 3, 2, 1 ]                 #=> [ 1, 3 ]
[ 'a', 'b', 'b', 'z' ] & [ 'a', 'b', 'c' ]   #=> [ 'a', 'b' ]

=begin
ary * int → new_ary
birinci kısma diziyi ikinci kısıma kaç kere yazılmasını istediğimizi belirtiriz. 
=end
[ 1, 2, 3 ] * 3    #=> [ 1, 2, 3, 1, 2, 3, 1, 2, 3 ]

=begin
ary + other_ary → new_ary
iki diziyi birleştirme işlemini bu şekilde yaparız.
=end
[ 1, 2, 3 ] + [ 4, 5 ]    #=> [ 1, 2, 3, 4, 5 ]
a = [ "a", "b", "c" ]
c = a + [ "d", "e", "f" ]
c                         #=> [ "a", "b", "c", "d", "e", "f" ]
a                         #=> [ "a", "b", "c" ]

=begin
ary - other_ary → new_ary
iki dizide ki farklı olan olan değerlerle yeni bir dizi oluşturur.
=end
[ 1, 1, 2, 2, 3, 3, 4, 5 ] - [ 1, 2, 4 ]  #=>  [ 3, 3, 5 ]

=begin
ary << obj → ary
verilen nesneyi dizinin sonuna ekler
=end
a = [ 1, 2 ]
a << "c" << "d" << [ 3, 4 ] #=>  [ 1, 2, "c", "d", [ 3, 4 ] ]
a #=>  [ 1, 2, "c", "d", [ 3, 4 ] ]

=begin
ary <=> other_ary → -1, 0, +1 or nil
dizileri karşılaştırma işlemin de dizilerin uzunluğuna ve içindeki değerlere bakılır.
=end
[ "a", "a", "c" ]    <=> [ "a", "b", "c" ]   #=> -1
[ 1, 2, 3, 4, 5, 6 ] <=> [ 1, 2 ]            #=> +1
[ 1, 2 ]             <=> [ 1, :two ]         #=> nil

# Array genel işlemleri
a = [ "a", "b", "c", "d", "e" ]
a[2] +  a[0] + a[1]    #=> "cab"
a[6]                   #=> nil
a[1, 2]                #=> [ "b", "c" ]
a[1..3]                #=> [ "b", "c", "d" ]
a[4..7]                #=> [ "e" ]
a[6..10]               #=> nil
a[-3, 3]               #=> [ "c", "d", "e" ]
a[5]                   #=> nil
a[6, 1]                #=> nil
a[5, 1]                #=> []
a[5..10]               #=> []
a = Array.new
a[4] = "4";                 #=> [nil, nil, nil, nil, "4"]
a[0, 3] = [ 'a', 'b', 'c' ] #=> ["a", "b", "c", nil, "4"]
a[1..2] = [ 1, 2 ]          #=> ["a", 1, 2, nil, "4"]
a[0, 2] = "?"               #=> ["?", 2, nil, "4"]
a[0..2] = "A"               #=> ["A", "4"]
a[-1]   = "Z"               #=> ["A", "Z"]
a[1..-1] = nil              #=> ["A", nil]
a[1..-1] = []               #=> ["A"]
a[0, 0] = [ 1, 2 ]          #=> [1, 2, "A"]
a[3, 0] = "B"               #=> [1, 2, "A", "B"]

# all? metodu, arry içindeki elemanların hepsinin belirli bir koşulu sağlarsa true çıktısı alırız.
hayvanlar = ["Kedi", "Köpek", "Kuş", "Kurbağa", "Kaplumbağa"]
hayvanlar.all? { |hayvan_ismi| hayvan_ismi.length >= 2 } # => true

# any? metodu, arry içindeki elemanların bir tanesi bile koşulu sağlarsa true çıktısı alırız.

# En azından bir hayvan ismi A ile başlıyor mu?
hayvanlar = ["Kedi", "Köpek", "At", "Yılan", "Balık"]
hayvanlar.any?{ |hayvan_ismi| hayvan_ismi.start_with?("A") } # => true

# assoc metodu, elemanları array olan bir array içinde, ilk değere göre yakalama yapmaya yarar.
a = ["renkler", "kırmızı", "sarı", "mavi"]
b = ["harfler", "a", "b", "c"]
c = "berkay"

t  = [a, b, c]
t                 # => [["renkler", "kırmızı", "sarı", "mavi"], ["harfler", "a", "b", "c"], "berkay"]
t.assoc("renkler") # => ["renkler", "kırmızı", "sarı", "mavi"]
t.assoc("berkay")     # => nil

# at metodu, dizindeki değeri döndürür. Olmayan bir indeksin değerini istersek nill döndürür.
a = ["a", "b", "c", "d", "e"]
a.at(0)     #=> "a"
a.at(-1)    #=> "e"

# Binary arama yapar, O(log n) formülünü uygular, buradaki n Array'in boyudur koşulu sağlayan ilk değeri döndürür.

# 2'den büyük 3, 4 ve 5 olmasına rağmen tek sonuç
[1, 2, 3, 4, 5].bsearch{ |n| n > 2 }  # => 3
[1, 2, 3, 4, 5].bsearch{ |n| n >= 4 } # => 4

# clear metodu, arry'in içini temizler ve boş bir array döndürür.
a = [ "a", "b", "c", "d", "e" ]
a.clear    #=> [ ]

# collect metodu, blok içinde gelen kodu her elemana uygular, yeni Array döner:
a = [1, 2, 3, 4, 5]
# kopyasını döndürür.
a.collect { |i| i * 2 }       # => [2, 4, 6, 8, 10]
a.collect { |i| "sayı #{i}" } # => ["sayı 1", "sayı 2", "sayı 3", "sayı 4", "sayı 5"]
# arrayi değiştirir.
a.collect! { |i| i * 2 }       # => [2, 4, 6, 8, 10]

# combination metodu, dizideki elemanların argüman olarak belirtilen rakam kadar kombinasyonunu oluşturur.
a = [1, 2, 3, 4]
a.combination(1).to_a  #=> [[1],[2],[3],[4]]
a.combination(2).to_a  #=> [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
a.combination(3).to_a  #=> [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]
a.combination(4).to_a  #=> [[1,2,3,4]]
a.combination(0).to_a  #=> [[]]
a.combination(5).to_a  #=> []   # 5'li kombinasyon yok

# compact metodu, dizinin içindeki boş değerleri temizler.
[ "a", nil, "b", nil, "c", nil ].compact #=> [ "a", "b", "c" ] # dizinin kopyasını döndürür.
[ "a", nil, "b", nil, "c", nil ].compact! #=> [ "a", "b", "c" ] # diziyi bu şekilde değiştirir

# concat metodu, array'in sonuna array eklememizi sağlar.
[ "a", "b" ].concat( ["c", "d"])   #=> [ "a", "b", "c", "d" ]
[ "a" ].concat( ["b"], ["c", "d"]) #=> [ "a", "b", "c", "d" ]
[ "a" ].concat #=> [ "a" ]

# count metodu, dizideki eleman sayısını verir, argüman olarak bir değer verilirse sadece o elemanı sayar.
a = [1, 2, 3, 4, 2]
a.count                    # => 5 # eleman sayısı
a.count(2)                 # => 2 # kaç tane 2 var?
a.count { |n| n % 2 == 0 } # => 3 # kaç tane 2'ye tam bölünen sayı var?

# cycle metodu, parametere olarak girilen değer kadar diziyi yazar, değer girilmezse sonsuz döngüye girer.
a = ["a", "b", "c"]
a.cycle {|x| puts x}       # print, a, b, c, a, b, c,.. 
a.cycle(2) {|x| puts x}    # print, a, b, c, a, b, c.

# delete metodu, belirtilen elemandan dizinin içinden kaç tane varsa hepsini siler.
a = [ "a", "b", "b", "b", "c" ]
a.delete("b")                   #=> "b"
a                               #=> ["a", "c"]

# delete_at metodu, indeksi belirtilen elemanı diziden siler
a = ["sinek", "ayı", "kedi", "köpek"]
a.delete_at(2)    #=> "kedi"
a                 #=> ["sinek", "ayı", "köpek"]

# delete_if metodu, blok içerisindeki koşul sağlandığında elemanları siler.
scores = [ 97, 42, 75 ]
scores.delete_if {|score| score < 80 }   #=> [97]

# difference metodu, iki dizi karşılaştırılır aynı olmayan elemanlar çıkartılarak yeni bir dizi döndürür.
[ 1, 1, 2, 2, 3, 3, 4, 5 ].difference([ 1, 2, 4 ])     #=> [ 3, 3, 5 ]

# drop metodu, parametre olarak belirtilen elemanı dizinde arar bulduğu noktadan sonraki elemanları yeni bir dizi olarak döndürür.
a = [1, 2, 3, 4, 5, 0]
a.drop(3)             #=> [4, 5, 0]

# drop_while metodu, belirtilen koşul nil veya false olmadığı sürece elemanları gezer ve yeni bir dizi oluşturur.
a = [1, 2, 3, 4, 5, 0]
a.drop_while {|i| i < 3 }   #=> [3, 4, 5, 0]

# each metodu, dizideki bütün elemanları gezerek işlem yapar.
a = [ "a", "b", "c" ]
a.each {|x| print x, " -- " } # a -- b -- c --

# each_index, each ile aynı özelliğe sahip farkı elemanın index numarasına göre işlem yapar.
a = [ "a", "b", "c" ]
a.each_index {|x| print x, " -- " } # 0 -- 1 -- 2 --

# empty? metodu, dizinin içinde hiçbir şey yoksa true döndürür.
[].empty?   #=> true

# Eşitlik kontrolü içindir. Eğer karşılığı aynı cinsse ve birebir aynı elemanlara sahipse true döner.
a = ["Uğur", "Yeşim", "Ezel", "Ömer"]
a.eql?(["Yeşim", "Ezel", "Ömer", "Uğur"]) # => false
a.eql?([])                                # => false
a.eql?(["Uğur", "Yeşim", "Ezel", "Ömer"]) # => true

# fetch metodu, belirtilen index'deki elemanı döndürür, belirtilen indexde eleman yoksa uyarı mesajı döndürebilir veya farklı işlemler yapılabilir.
arr = [11,22,33,44]
arr.fetch(1)   # => 22
arr.fetch(4, "boş")  # => "boş"

# fiil metodu, diziyi argüman olarak verilen değerlerle doldurur.
a = [ "a", "b", "c", "d" ]
a.fill("x")              #=> ["x", "x", "x", "x"]
a.fill("z", 2, 2)        #=> ["x", "x", "z", "z"]
a.fill("y", 0..1)        #=> ["y", "y", "z", "z"]
a.fill {|i| i*i}         #=> [0, 1, 4, 9]
a.fill(-2) {|i| i*i*i}   #=> [0, 1, 8, 27]

# dizinin ilk indeksini veya argüman olarak girilen indeksini döndürür.
a = [ "q", "r", "s", "t" ]
a.first     #=> "q"
a.first(2)  #=> ["q", "r"]

# dizi içerisinde dizi olarak kurulmuş dizileri tek bir dizi haline getirir.
s = [ 1, 2, 3 ]           #=> [1, 2, 3]
t = [ 4, 5, 6, [7, 8] ]   #=> [4, 5, 6, [7, 8]]
a = [ s, t, 9, 10 ]       #=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
a.flatten                 #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] # kopya dizi
a.flatten!                #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] # değiştirilmiş dizi
a = [ 1, 2, [3, [4, 5] ] ]
a.flatten(1)              #=> [1, 2, 3, [4, 5]]

# include? metodu, argüman olarak belirtilen değeri dizi içerisinde arar bulursa true bulamazsa false döner.
a = [ "a", "b", "c" ]
a.include?("b")   #=> true
a.include?("z")   #=> false

# index metodu, argüman olarak belirtilen elemanın dizi içerisindeki index'sini verir blok kod yazarak eşleşen bütün elemanların index'ini görebiliriz.
a = [ "a", "b", "c" ]
a.index("b")              #=> 1
a.index("z")              #=> nil
a.index {|x| x == "b"}    #=> 1

# insert metodu(index,değer), belirtilen index numarasına istenilen değeri ekler
a = %w{ a b c d }
a.insert(2, 99)         #=> ["a", "b", 99, "c", "d"] 
a.insert(-2, 1, 2, 3)   #=> ["a", "b", 99, "c", 1, 2, 3, "d"]

# intersection metodu, iki dizi arasındaki ortak değerleri alarak yeni bir dizi döndürür.
[ 1, 1, 3, 5 ].intersection([ 3, 2, 1 ])                    # => [ 1, 3 ]
[ "a", "b", "z" ].intersection([ "a", "b", "c" ], [ "b" ])  # => [ "b" ]

=begin
join methodu, argümansız olarak kullanırsak dizideki bütün elemanları birleştirerek tek parça olarak döndürür,
argüman belirtilmişse argümana değerine göre işlem yapar.
=end
[ "a", "b", "c" ].join        #=> "abc"
[ "a", "b", "c" ].join("-")   #=> "a-b-c"
[ "a", [1, 2, [:x, :y]], "b" ].join("-")   #=> "a-1-2-x-y-b"

# keep_if metodu, belirtilen koşula uyan elemanları diziden siler.
a = %w[ a b c d e f ]
a.keep_if {|v| v =~ /[aeiou]/ }    #=> ["a", "e"]
a                                  #=> ["a", "e"]

=begin
last metodu, dizideki son elemanı verir,
argüman olarak bir rakam verilirse belirtilen rakam kadar en sondan elemanları döndürür.
=end
a = [ "w", "x", "y", "z" ]
a.last     #=> "z"
a.last(2)  #=> ["y", "z"]

# dizinin uzunluğunu döndürür.
[ 1, 2, 3, 4, 5 ].length   #=> 5
[].length                  #=> 0

=begin
map metodu, blok içinde gelen kodu her elemana uygular, kopya bir array döndürür.
map! metodu ise arrayi değiştirir.
=end
["Uğur", "Yeşim", "Ezel", "Ömer"].map { |isim| "İsim: #{isim}" } # => ["İsim:Uğur", "İsim: Yeşim", "İsim: Ezel", "İsim: Ömer"]
a = [ "a", "b", "c", "d" ]
a.map! {|x| x + "!" }
a #=>  [ "a!", "b!", "c!", "d!" ]

# max metodu, dizideki maxsimum değerli elemanı döndürür.
a = [6, 1, 8, 4, 11]
a.max # => 11
a.max(2) # => 8 11

# min metodu, dizideki minimum değerli elemanı döndürür.
ary = %w(albatross dog horse)
ary.min                                   #=> "albatross"
ary.min(2)                                #=> ["albatross", "dog"]

# Aynı mantıkta min_by ve max_by da gerekli şarta göre min, max döner.
m = ["a", "ab", "abc", "abcd", "111111111"]
m.min_by { |x| x.length }   # => "a"
m.max_by { |x| x.length }   # => "111111111"

# minmax metodu, arrayin minumum ve maxsimum'unu döndürür.
m = ["a", "ab", "abc", "abcd"]
m.minmax # => ["a", "abcd"]

# Aynı mantıkta minmax_by da gerekli şarta göre min, max döner.
m = ["a", "ab", "abc", "abcd"]
m.minmax_by { |x| x.length } # => ["a", "abcd"]

# none? metodu, array içindeki elemanların hepsi false olmalıdır ki sonuç true dönsün.
hayvanlar = ["Kedi", "Köpek", "At", "Yılan", "Balık", "Kaplumbağa"]
# Hiçbir ismin uzunluğu 2 karakter olmamalı ? false. At'ın uzunluğu 2
hayvanlar.none?{ |hayvan_ismi| hayvan_ismi.length == 2 } # => false
# C ile başlayan hayvan ismi olmasın! true. Hiçbir isim C ile başlamıyor
hayvanlar.none?{ |hayvan_ismi| hayvan_ismi.start_with?("C") } # => true 

=begin
one? metodu, one? da ise sadece bir eleman koşula uymalıdır. Yani bir tanesi true dönmelidir. 
Eğer birden fazla eleman koşula true dönerse sonuç false olur
=end

# Sadece bir ismin uzunluğu 6 karaterten büyük olmalı!
hayvanlar.one?{ |hayvan_ismi| hayvan_ismi.length > 6 } # => true
# Uzunluğu 3'ten büyük 5 isim olduğu için false döndü!
hayvanlar.one?{ |hayvan_ismi| hayvan_ismi.length > 3 } # => false

=begin
permutation metodu, aslındaki matematikteki permutasyon işlemidir. Parametre vermezsek normal permutasyonunu döndürür.
Eğer parametre verirsek parametre değerine göre döndürür.
=end
[1, 2, 3].permutation.to_a # => [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
[1, 2, 3].permutation(1).to_a # => [[1], [2], [3]]
[1, 2, 3].permutation(2).to_a # => [[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]

# pop metodu, dizideki son elemanı siler, eğer parametre değeri verirsek sondan itibaren parametre değeri kadar siler.
a = [ "a", "b", "c", "d" ]
a.pop     #=> "d"
a.pop(2)  #=> ["b", "c"]
a         #=> ["a"]

# prepend metodu stringin başına parantez içinde girilen texti ekler. 
"dünya".prepend("Merhaba ") # => "Merhaba dünya" # öne ekledi

# product array ve argüman olarak geçilecek diğer array'lerin elemanlarıyla oluşabilecek tüm alternatifleri üretmenizi sağlar.
[1, 2, 3].product            # => [[1], [2], [3]]
[1, 2, 3].product([4, 5])    # => [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]
[1, 2, 3].product(["a", "b"], ["x", "y"]) # => [[1, "a", "x"], [1, "a", "y"], [1, "b", "x"], [1, "b", "y"], [2, "a", "x"], [2, "a", "y"], [2, "b", "x"], [2, "b", "y"], [3, "a", "x"], [3, "a", "y"], [3, "b", "x"], [3, "b", "y"]]

# push metodu, dizinin sonuna istenilen değeri eklememizi sağlar.
a = [ "a", "b", "c" ]
a.push("d", "e", "f")#=> ["a", "b", "c", "d", "e", "f"]
[1, 2, 3].push(4).push(5) #=> [1, 2, 3, 4, 5]

# rassoc metodu, elemanları array olan bir array içinde, ikinci değere göre yakalama yapmaya yarar.
a = ["renkler", "kırmızı", "sarı", "mavi"]
t.rassoc("kırmızı")   # => ["renkler", "kırmızı", "sarı", "mavi"]

# reject metodu, blok içinden gelen ifadenin false olanlarına göre filtreleme yapar ve yeni array döndürür. ! ile kullanımıda mevcuttur.
[1, 2, 3, 10, 15, 20].reject { |n| n % 2 == 0 } # => [1, 3, 15] # 2'ye tam bölülenleri at
[1, 2, "3", "ali", 15, 20].reject { |n| n.is_a?(Fixnum) } # => ["3", "ali"] # Sayı olanları at

# repeated_combination metodu, combination metodundan ekstra olarak sayının tekrar ettiğindeki sonucuda döndürür.
[1, 2, 3].repeated_combination(2).to_a # => [[1, 1], [1, 2], [1, 3], [2, 2], [2, 3], [3, 3]]

# repeated_permutation metodu, permutation metodundan ekstra olarak sayının tekrar ettiğindeki sonucuda döndürür.
[1, 2, 3].repeated_permutation(2).to_a # => [[1, 1], [1, 2], [1, 3], [2, 1], [2, 2], [2, 3], [3, 1], [3, 2], [3, 3]]

# replace metodu, argüman olarak verilen değerler dizideki değerlerle yer değiştirir.
a = [ "a", "b", "c", "d", "e" ]
a.replace([ "x", "y", "z" ])   #=> ["x", "y", "z"]
a                              #=> ["x", "y", "z"]

# reverse metodu, dizideki değerleri tersine çevirir. Each yapısı da kullanabiliriz
[ "a", "b", "c" ].reverse   #=> ["c", "b", "a"] # kopya dizi
a = [ "a", "b", "c" ]
a.reverse!       #=> ["c", "b", "a"] # değiştirilmiş dizi
a = [ "a", "b", "c" ]
a.reverse_each {|x| print x, " " } # c b a

# rindex metodu, belirli bir elemanın indexsini döndürür.
"merhaba".rindex("m") # => 0
"merhaba".rindex("h") # => 3

# rotate metodu, Array elemanları kendi içinde kaydırır.
a = [1, 2, 3, 4, 5]
a.rotate    # => [2, 3, 4, 5, 1] # 1 kaydırdı
a.rotate(2) # => [3, 4, 5, 1, 2] # 2 kaydırdı, ilk 2 elemanı sona koydu!

# Array'den random olarak eleman almaya yarar. Eğer parametre geçilirse geçilen adet kadar random eleman döner.
a = [1, 2, 3, 4, 5]
a.sample    # => 3
a.sample(3) # => [5, 1, 3]

# Blok içinden gelen ifadenin true / false olmasına göre filtre yapar ve yeni array döner. select! kullanımıda var diziyi direk değiştirir.
[1, 2, 3, 10, 15, 20].select { |n| n % 2 == 0 } # => [2, 10, 20] # 2'ye tam bölünenler
[1, 2, "3", "ali", 15, 20].select { |n| n.is_a?(Fixnum) } # => [1, 2, 15, 20] # sadece sayılar

# dizideki ilk elemanı siler.
a = ["Uğur", "Ömer", "Yeşim", "Ezel", "Eren"]
a.shift            # => "Uğur"

# dizideki elemanları karıştırır. shuffle! metoduda diziyi direk değiştirir.
a = [ 1, 2, 3 ]           #=> [1, 2, 3]
a.shuffle                 #=> [2, 3, 1]
a                         #=> [1, 2, 3]

# dizinin uzunluğunu döndürür.
[ 1, 2, 3, 4, 5 ].size   #=> 5
[].size                  #=> 0

# Belirtilen indeksde ki elemanı siler
a = [ "a", "b", "c", "d", "e" ]
a[2] +  a[0] + a[1]    #=> "cab"
a[6]                   #=> nil
a[1, 2]                #=> [ "b", "c" ]
a[6..10]               #=> nil
a[-3, 3]               #=> [ "c", "d", "e" ]

# Belirtilen indeksde ki elemanı siler ve diziyi değiştirir.
a = [ "a", "b", "c" ]
a.slice!(1)     #=> "b"
a               #=> ["a", "c"]
a.slice!(-1)    #=> "c"
a               #=> ["a"]
a.slice!(100)   #=> nil
a               #=> ["a"]

# dizideki elemanları alfabetik veya sayısal olarak sıralar. sort! hali de vardır.
ary = [ "d", "a", "e", "c", "b" ]
ary.sort                     #=> ["a", "b", "c", "d", "e"]

# Aynı sort gibi çalışır, Blok kullanır. İfadenin true olmasına göre çalışır
hayvanlar = ["kamplumbağa", "at", "eşşek", "kurbağa", "ayı"]
# isimleri uzunluklarına göre küçükten büyüğe doğru sıralayalım
hayvanlar.sort_by{ |isim| isim.length } # => ["at", "ayı", "eşşek", "kurbağa", "kamplumbağa"]
# isimleri uzunluklarına göre büyükten küçüğe doğru sıralayalım
hayvanlar.sort_by{ |isim| -isim.length } # => ["at", "ayı", "eşşek", "kurbağa", "kamplumbağa"]

# sum metodu, elemanların toplamını döndürür.
[1, 2, 3].sum                      #=> 6
[3, 5.5].sum                       #=> 8.5
["a", "b", "c"].sum("")            #=> "abc"
[2.5, 3.0].sum(0.0) {|e| e * e }   #=> 15.25

# dizideki argüman olarak verilen elemanları baştan itibaren döndürür. While kullanılarakda yapılabilir.
a = [1, 2, 3, 4, 5, 0]
a.take(3)             #=> [1, 2, 3]
a.take_while {|i| i < 3}    #=> [1, 2]

# to_a ve to_ary kendisini döndürür.
["a", 1, "b", 2].to_a       # => ["a", 1, "b", 2]
["a", 1, "b", 2].to_ary     # => ["a", 1, "b", 2]

# Arrayi anahtar değer olarak döndürür.
[["a", 1], ["b", 2]].to_h   # => {"a"=>1, "b"=>2}

# Array içindeki array'leri satır gibi düşünüp bunları sütuna çevirir.
a = [[1,2], [3,4], [5,6]]
a.transpose   #=> [[1, 3, 5], [2, 4, 6]]

# Verilen dizi ile eklenmek istenen dizilerde ki elemanları birleştirerek verilen dizi sırasına uygun olarak sonuna ekler.
[ "a", "b", "c" ].union( [ "c", "d", "a" ] )    #=> [ "a", "b", "c", "d" ]
[ "a" ].union( ["e", "b"], ["a", "c", "b"] )    #=> [ "a", "e", "b", "c" ]

# Dizide bulunan aynı elemanlardan bir tanesi kalır diğerlerini siler.
["a", 1, nil, 2, nil, "b", 1, "a"].uniq # => ["a", 1, nil, 2, "b"]
b = [ "a", "b", "c" ]
b.uniq!   # => nil

# Stringin başına parantez içinde girilen değerleri ekler. 
a = [ "b", "c", "d" ]
a.unshift("a")   #=> ["a", "b", "c", "d"]
a.unshift(1, 2)  #=> [ 1, 2, "a", "b", "c", "d"]

# values_at method'u ile ilgili index ya da index'lerdeki elemanları alabiliriz
isimler = ["Uğur", "Ömer", "Yeşim", "Ezel", "Eren"]
isimler.values_at(0)         # => ["Uğur"]


a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
[1, 2, 3].zip(a, b)   # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
[1, 2].zip(a, b)      # => [[1, 4, 7], [2, 5, 8]]
a.zip([1, 2], [8])    # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
=begin
[1, 2, 3].zip(a, b) işlemini yaparken, önce 0.elemanı yani 1'i aldı, sonra a'nun 0.elemanını aldı, sonra da b'nin 0.elemanını aldı ve paketledi : [1, 4, 7] aynı işi 1. ve 2. elemanlar için yaptı.
[1, 2].zip(a, b) yaparken, Array boyları eşit olmadığı için [1, 2] sadece 2 elemanlı olduğu için bu işlemi 0. ve 1. elemanlar için yaptı.
Son örnekte index'e karşılık gelmediği için elemanlar nil geldi!
=end