=begin
   Array methodları çok fazla ve aynı işleve sahip birden fazla methodlar bulunduğu için başlıklar altında incelemeye karar verdim
  Şimdi örnekler üzerinde incelemeye başlayalım
=end


# Array oluşturma methodları
a = []  # Ya bu şekilde
a.class # => Array

b = Array.new # => Ya da bu şekilde
b.class       # => Array

a = Array.new(5)  # içinde 5 eleman taşıyacak Array oluştur
a # => [nil, nil, nil, nil, nil]

aylar = Array.new(12, "ay") # 12 eleman olsun ve hepsi "ay" olsun
aylar # => ["ay", "ay", "ay", "ay", "ay", "ay", "ay", "ay", "ay", "ay", "ay", "ay"]






# Blok yapısı ile array oluşturmak
dizi = Array.new(10) { |eleman| eleman = eleman * 4 }
dizi # => [0, 4, 8, 12, 16, 20, 24, 28, 32, 36]

# ya da
dizi = Array.new(10) do |eleman|
  eleman = eleman * 4
end
dizi # => [0, 4, 8, 12, 16, 20, 24, 28, 32, 36]






# Ruby'de her nesnenin bir ID'si ve HASH değeri vardır.
[1, 2, 3].hash   # => 3384159031637530117
[1, 2, 3].__id__ # => 70147646473880






# Array Sorgulama yöntemleri

# length, size  -'array boyutunu döndürür.'
array = [4,6,7,"Furkan","Akyol"]
array.length # => 5
array.size   # => 5

# include?  -'verilen parametre veya parametreler array içerisinde mevcutsa true döndürür'
array.include?("Mehmet") # => false

# member?  -'verilen parametre değeri array içerisinde varsa true döndürür.'
array.member?(4) # => true

# empty?  -'array boş ise true, dolu ise false döndürür.'
array.empty? # => false

# any? -'Array içerisindeki elemanların sadece bir tanesi koşulu sağlıyorsa true döndürür'
hayvanlar = ["Kedi", "Köpek", "At", "Yılan", "Balık"]
hayvanlar.any?{ |hayvan_ismi| hayvan_ismi.start_with?("A") } # => true

# all?  -'Tüm array elemanları koşula uyarsa true döndürür.'
hayvanlar = ["Kedi", "Köpek", "Kuş", "Kurbağa", "Kaplumbağa"]
hayvanlar.all? { |hayvan_ismi| hayvan_ismi.start_with?("K") } # => true

# one?  -'one? da ise sadece bir eleman koşula uymalıdır. Eğer birden fazla eleman koşula true dönerse sonuç false olur'
hayvanlar = ["Kedi", "Köpek", "At", "Yılan", "Balık", "Kaplumbağa"]

hayvanlar.one?{ |hayvan_ismi| hayvan_ismi.length > 6 } # => true  # Sadece bir ismin uzunluğu 6 karaterten büyük olmalı!
hayvanlar.one?{ |hayvan_ismi| hayvan_ismi.length > 3 } # => false  # Uzunluğu 3'ten büyük 5 isim olduğu için false döndü!

# none?   -'Tüm koşullar false olmalıdır ki sonuç true dönsün'
hayvanlar = ["Kedi", "Köpek", "At", "Yılan", "Balık", "Kaplumbağa"]

hayvanlar.none?{ |hayvan_ismi| hayvan_ismi.length == 2 } # => false  # Hiçbir ismin uzunluğu 2 karakter olmamalı? false. At'ın uzunluğu 2
hayvanlar.none?{ |hayvan_ismi| hayvan_ismi.start_with?("C") } # => true # C ile başlayan hayvan ismi olmasın! true. Hiçbir isim C ile başlamıyor






# Array karşılaştırma methodları

# <=>   -'Küçük olduğu duruma -1, eşit durumda 0, büyük olduğu durumda 1 değerleri döndürür.'
[1, 2, 3, 4] <=> [1, 2, 3, 4] # => 0 # Eşit
[1, 2, 3, 4] <=> [1, 2, 3]    # => 1 # İlk değer büyük
[1, 2, 3] <=> [1, 2, 3, 4]    # => -1 # İlk değer küçük

# ==  -'klasik eşitlik sorgulama yöntemidir'
array2 = [1,3,8,9,"Ali","Yılmaz","Seçkin","Kahyaoğlu"]
array3 = [4,6,7,"Furkan","Akyol"]

array == array2  # => false
array == array3  # => true

# eql?  -'Eğer karşılığı aynı cinsse ve birebir aynı elemanlara sahipse true döner.'
a = ["Uğur", "Yeşim", "Ezel", "Ömer"]

a.eql?(["Yeşim", "Ezel", "Ömer", "Uğur"]) # => false
a.eql?([])                                # => false
a.eql?(["Uğur", "Yeşim", "Ezel", "Ömer"]) # => true






# Array ve array verilerini çağırma methodları

# []  -'içerisine girilen index numarasına karşılık gelen veriyi çağırır.'
array[0,3] # => 4,6,7  -'0. indexten 3. indexe kadar çağırır (3. index dahil edilmez)'

# fetch   -'içerisine girilen index numarasına karşılık gelen veriyi çağırır.'
array.fetch(1) # => 6

# take  -'içerisine girilen sayı kadar elemanı çağırır.'
array.take(4)  # => 4,6,7,"Furkan"

# drop  -'take methodunun tersidir. içerisine girilen sayı hariç elemanları çağırır.'
array.drop(2)  # => 7,"Furkan","Akyol"

# first & last  -'Adından da anlaşılacağı gibi, Array'in ilk ve son elemanlarını çağırmak için kullanılır.'
a = [1, 2, 3, 4, 5]
a.first # => 1
a.last # => 5

a = [1, 2, 3, 4, 5]   # Parametreli de kullanılabilir.
a.first(2) # => [1, 2]
a.last(2)  # => [4, 5]

# min & max & minmax  -' Array'in minimum ve maximum'unu döner.'
m = ["a", "ab", "abc", "abcd"]
m.min    # => "a"
m.max    # => "abcd"
m.minmax # => ["a", "abcd"]

a = [6, 1, 8, 4, 11]
a.min # => 1
a.max # => 11

# assoc & rassoc  -'Elemanları Array olan bir Array içinde, ilk ve ikinci değere göre yakalama yapmaya yarar.'
a = ["renkler", "kırmızı", "sarı", "mavi"]
b = ["harfler", "a", "b", "c"]
c = "foo"

t  = [a, b, c]
t                   # => [["renkler", "kırmızı", "sarı", "mavi"], ["harfler", "a", "b", "c"], "foo"]
t.assoc("renkler")  # => ["renkler", "kırmızı", "sarı", "mavi"]
t.assoc("foo")      # => nil
t.rassoc("kırmızı")   # => ["renkler", "kırmızı", "sarı", "mavi"] -'rassoc ikinci elemana göre yakalama yapar.'

# at & values_at  -'ilgili index ya da index'lerdeki elemanları almamızı sağlar.'
isimler = ["Uğur", "Ömer", "Yeşim", "Ezel", "Eren"]
isimler.values_at(0)         # => ["Uğur"]
isimler.values_at(1, 2)      # => ["Ömer", "Yeşim"]

["a", "b", "c", "d", "e"].at(1)  # => "b"
["a", "b", "c", "d", "e"].at(-1) # => "e"

# drop_while  -'Belirtilen koşula göre değerleri array'den atar.'
notlar = [40, 45, 53, 70, 99, 65]
puts notlar.drop_while {|notu| notu < 50 }   # => [53, 70, 99, 65]  -'notu 50'den düşük olanları attık.'

# take_while  -'drop_while'nin tersini yapar. Belirtilen koşula göre değeri array içerisinde tutar, koşula uymayanları çıkarır.'
notlar = [40, 45, 53, 70, 99, 65]
notlar.take_while {|notu| notu < 50 } # => [40, 45]

# slice   -'Array içinden kesip başka bir Array oluşturmak için kullanılır.'
# slice methodu '!' ile birlikte kullanılırsa kalıcı olarak değiştirir.
[1, 2, 3, 4].slice(0, 2) # => [1, 2]  -'0.dan itibaren 2 tane'
[1, 2, 3, 4].slice(2..4) # => [3, 4]  -'2.den itibaren 2 tane'

# sample  -'Array içerisinden rastgele eleman alır, parametre verilirse kaç adet alması gerektiği de söylenir.'
a = [1, 2, 3, 4, 5]
a.sample    # => 3
a.sample(3) # => [5, 1, 3]

# sort  -'Array içindeki elemanları sıralayarak geri döndürür.'!' ile birlikte kullanılırsa kalıcı hale getirir.'
a = [1, 4, 2, 3, 11, 5]
a.sort # => [1, 2, 3, 4, 5, 11]

b = ["a", "c", "b", "z", "d"]
b.sort # => ["a", "b", "c", "d", "z"]

# shuffle   -'Array elemanlarını rastgele bir şekilde karıştırır.'!' ile birlikte kullanılırsa kalıcı hale getirir.'
a = [1, 2, 3, 4, 5]
a.shuffle # => [5, 4, 1, 3, 2]
a.shuffle # => [1, 2, 3, 5, 4]

# rotate  -'Array elemanlarını kendi içinde kaydırır.'!' ile birlikte kullanılırsa kalıcı hale getirir.'
a = [1, 2, 3, 4, 5]

a.rotate    # => [2, 3, 4, 5, 1] # 1 kaydırdı
a.rotate(2) # => [3, 4, 5, 1, 2] # 2 kaydırdı, ilk 2 elemanı sona koydu

# reverse -'Tüm array öğelerini ters sıralar. '!' ile birlikte kullanılırsa kalıcı hale getirir.'
a = [1, 2, 3, 4, 5]
a.reverse # => [5, 4, 3, 2, 1]

# compact & uniq  -'nil elemanları yok etmek için compact, birden fazla var olan elemanları tekil hale getirmek için uniq kullanılır.'
# compact & uniq methodları '!' ile birlikte kullanılırsa kalıcı olarak değiştirir.
["a", 1, nil, 2, nil, "b", 1, "a"].compact         # => ["a", 1, 2, "b", 1, "a"]
["a", 1, nil, 2, nil, "b", 1, "a"].uniq            # => ["a", 1, nil, 2, "b"]
["a", 1, nil, 2, nil, "b", 1, "a"].compact.uniq    # => ["a", 1, 2, "b"]

# select  -'Blok içinden gelen ifadenin true / false olmasına göre filtre yapar ve yeni Array döner'
# select methodu '!' ile birlikte kullanılırsa kalıcı olarak değiştirir.
[1, 2, 3, 10, 15, 20].select { |n| n % 2 == 0 } # => [2, 10, 20] # 2'ye tam bölünenler
[1, 2, "3", "ali", 15, 20].select { |n| n.is_a?(Fixnum) } # => [1, 2, 15, 20] # sadece sayılar

# reject  -'select'in tersidir.'!' ile birlikte kullanılırsa kalıcı olarak değiştirir. '
[1, 2, 3, 10, 15, 20].reject { |n| n % 2 == 0 } # => [1, 3, 15] # 2'ye tam bölülenleri at
[1, 2, "3", "ali", 15, 20].reject { |n| n.is_a?(Fixnum) } # => ["3", "ali"] # Sayı olanları attı.






# Array Atama methodları

# << & push & append
a = ["Uğur", "Yeşim", "Ezel"]
a << "Ömer"     # => ["Uğur", "Yeşim", "Ezel", "Ömer"]
a.push("Eren")  # => ["Uğur", "Yeşim", "Ezel", "Ömer", "Eren"]
a.append("Furkan")  # => ["Uğur", "Yeşim", "Ezel", "Ömer", "Eren", "Furkan"]
a.push("Tunç").push("Suat")  # => ["Uğur", "Yeşim", "Ezel", "Ömer", "Eren", "Furkan", "Tunç", "Suat"]

# unshift -'Array'in başına eleman eklemek için kullanılır'
a = ["Uğur", "Yeşim", "Ezel"]
a.unshift("Ömer") # => ["Ömer", "Uğur", "Yeşim", "Ezel"]

# insert  -'Array'de istenilen noktaya eleman eklemek için kullanılır. İlk parametre index diğer parametre/ler de eklenecek eleman/lar.'
a = ["Uğur", "Yeşim", "Ezel"]
a.insert(1, "Ömer") # => ["Uğur", "Ömer", "Yeşim", "Ezel"]
a.insert(1, "Ahmet", "Ece", "Eren") # => ["Uğur", "Ahmet", "Ece", "Eren", "Ömer", "Yeşim", "Ezel"]

# concat  -'Array'lerin sonuna array şeklinde eleman eklemek için kullanılır'
a = [1, 2, 3]
a.concat([4, 5, 6])
a # => [1, 2, 3, 4, 5, 6]

# fill  -'Array'in içini ilgili değerle doldurmak için kullanılır. İşlem sonucunda orijinal Array'in değeri değişir.'
a = ["Uğur", "Yeşim", "Ezel", "Ömer"]
a.fill("x")       # => ["x", "x", "x", "x"] # tüm elemanları x yaptı
a                 # => ["x", "x", "x", "x"] # artık a'nın yeni değeri bu

a = ["Uğur", "Yeşim", "Ezel", "Ömer"]
a.fill("y", 2)    # => ["Uğur", "Yeşim", "y", "y"] # 2.den itibaren y ile doldur

a = ["Uğur", "Yeşim", "Ezel", "Ömer"] # 2.den itibaren 1 tane doldur
a.fill("z", 2, 1) # => ["Uğur", "Yeşim", "z", "Ömer"]

=begin
  replace
Array'in içini, diğer Array'le değiştirir. Aslında Array'i başka bir Array'e eşitlemek gibidir. Eleman sayısının eşit olup olmaması hiç önemli değildir.
=end
a = ["Uğur", "Yeşim", "Ezel", "Ömer"]
a.replace(["Foo", "Bar"]) # => ["Foo", "Bar"]
a                         # => ["Foo", "Bar"]






# Array ve Array içeriği silme methodları

# pop   -'Son elemanı çıkartmank için pop kullanılır.'
a = ["Uğur", "Ömer", "Yeşim", "Ezel", "Eren"]
a.pop              # => "Eren"
a                  # => ["Uğur", "Ömer", "Yeşim", "Ezel"]

a = ["Uğur", "Ömer", "Yeşim", "Ezel", "Eren"]
a.pop(2) # Parametre verilerek kullanıldığında girilen sayı kadar sondan eleman silme işlemi yapar
a        # => ["Uğur", "Ömer", "Yeşim"]

# shift   -'Baştaki elemanı çıkartmak için shift kullanılır.'
a = ["Uğur", "Ömer", "Yeşim", "Ezel"]
a.shift            # => "Uğur"
a                  # => ["Ömer", "Yeşim", "Ezel"]

a.shift(2)         # Parametre verilerek kullanıldığında girilen sayı kadar baştan eleman silme işlemi yapar
a                  # => ["Ezel"]

# delete  -'Herhangi bir elemanı çıkartmak için delete kullanılır.'
a = ["Uğur", "Ömer", "Yeşim", "Ezel", "Eren"]
a.delete("Ömer")   # => "Ömer"
a                  # => ["Yeşim", "Ezel"]

# delete_at   -'Belirli bir index'deki elemanı çıkartmak için delete_at kullanılır.'
a = ["Uğur", "Ömer", "Yeşim", "Ezel", "Eren"]
a.delete_at(1)     # => "Ömer"
a                  # => ["Uğur", "Yeşim", "Ezel", "Eren"]

# delete_if   -'Belirli bir koşulun sağlandığı durumlarda silme işlemi uygular.'
notlar = [40, 45, 53, 70, 99, 65]
notlar.delete_if { |notu| notu < 50 } # => [53, 70, 99, 65]   # notu 50'den düşük olanlar silindi

# keep_if   -'Blok içindeki ifade'den sadece false dönenleri atar'
a = [1, 2, 3, 10, 15, 20]
a.keep_if { |n| n % 2 == 0 } # => [2, 10, 20] # 2'ye bölünemeyenler false geldiği için düştüler.
a     # => [2, 10, 20]






# Array Birleştirme, çıkarma, parçalama methodları

# +   -'iki arrayi toplar ve yeni array döner.'
a = ["Uğur", "Yeşim", "Ezel"]
b = ["Ömer"]

a + b # => ["Uğur", "Yeşim", "Ezel", "Ömer"]

# -   -'Array'ler arasındaki farkı Array olarak döner'
a = ["Uğur", "Yeşim", "Ezel"]
b = ["Uğur", "Yeşim"]

a - b # => ["Ezel"] # a'da olab b elemanları kayboldu

# |   -'İki Array'i unique (tekil) elemanlar olarak birleştirir.'
a = ["Uğur", "Yeşim", "Ezel"]
b = ["Uğur", "Ömer"]

a | b # => ["Uğur", "Yeşim", "Ezel", "Ömer"]

# flatten -'Array içinde Array elemanları varsa, tek bir array haline getirmek için kullanılır.'
# '!' işareti ile birlikte kullanılırsa kalıcı olarak eğiştirir.
[1, 2, ["a", "b", :c], [66, [5.5, 3.1]]].flatten # => [1, 2, "a", "b", :c, 66, 5.5, 3.1]


=begin
    partition
  partition Array'i 2 parçaya ayırmaya yarar. Sonuç, blok'ta işlenen ifadeye bağlı olarak [true_array, false_array] olarak döner.
  Yani koşula true cevap verenlerle false cevap verenler ayrı parçalar halinde döner
=end

[1, 2, 3, 4, 5, 6].partition{ |n| n.even? } # => [[2, 4, 6], [1, 3, 5]]
# Çift sayılar, true_array yani ilk parça:    [2, 4, 6]
# Tek sayılar, false_array yani ikinci parça: [1, 3, 5]

[1, 2, 3, 4, 5, 6].partition{ |n| n.even? }[0] # => [2, 4, 6]   -'sadece çift sayılar'

# group_by  -'gruplama işlemi yapmak için kullanılır.'
notlar = [50, 20, 44, 60, 80, 100, 99, 81, 5]
notlar.group_by{ |notu| notu > 40 }[true] # => [50, 44, 60, 80, 100, 99, 81]  -'notu 50'den büyük olanlar'

#zip    -'belirtilen parametrelere göre paketleme işlemi yapar'
a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]

[1, 2, 3].zip(a, b)   # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
[1, 2].zip(a, b)      # => [[1, 4, 7], [2, 5, 8]]
a.zip([1, 2], [8])    # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]






# Array iterasyon ve blok kullanım methodları

# each
a = ["Uğur", "Yeşim", "Ezel", "Ömer"]

a.each { |isim| puts "İsim: #{isim}" }
# İsim: Uğur
# İsim: Yeşim
# İsim: Ezel
# İsim: Ömer

# each_index
a = ["Uğur", "Yeşim", "Ezel", "Ömer"]

a.each_index { |i| puts "Index: #{i}, Değeri: #{a[i]}" }
# Index: 0, Değeri: Uğur
# Index: 1, Değeri: Yeşim
# Index: 2, Değeri: Ezel
# Index: 3, Değeri: Ömer

# each_with_index
a = ["Uğur", "Yeşim", "Ezel", "Ömer"]

a.each_with_index { |eleman, index| puts "index: #{index}, eleman: #{eleman}" }
# index: 0, eleman: Uğur
# index: 1, eleman: Yeşim
# index: 2, eleman: Ezel
# index: 3, eleman: Ömer

# cycle   -''
a.cycle(2).to_a # => [1, 2, 3, 1, 2, 3] # 2 defa
a.cycle(4).to_a # => [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3] # 3defa
a.cycle(2) { |o| puts "Sayı #{o}" }
# Sayı 1
# Sayı 2
# Sayı 3
# Sayı 1
# Sayı 2
# Sayı 3

# combination   -'Matematikteki kombinasyon işlemidir.'
a = [1, 2, 3]
a.combination(1).to_a # => [[1], [2], [3]]
a.combination(2).to_a # => [[1, 2], [1, 3], [2, 3]]

# repeated_combination   -'combination olası tekil sonucu, repeated_combination ise girilen sayıya göre tekrar edebilen sonucu döner.'
[1, 2, 3].permutation(2).to_a # => [[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]
[1, 2, 3].repeated_permutation(2).to_a # => [[1, 1], [1, 2], [1, 3], [2, 1], [2, 2], [2, 3], [3, 1], [3, 2], [3, 3]]

# permutation   -'Matematikteki permutasyon işlemidir.'
[1, 2, 3].permutation(1).to_a # => [[1], [2], [3]]
[1, 2, 3].permutation(2).to_a # => [[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]

# repeated_permutation  -'permutation olası tekil sonucu, repeated_permutation ise girilen sayıya göre tekrar edebilen sonucu döner.'
[1, 2, 3].permutation(2).to_a # => [[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]
puts [1, 2, 3].repeated_permutation(2).to_a # => [[1, 1], [1, 2], [1, 3], [2, 1], [2, 2], [2, 3], [3, 1], [3, 2], [3, 3]]

# product   -'Array ve argüman olarak geçilecek diğer Array/lerin elemanlarıyla oluşabilecek tüm alternatifleri üretmenizi sağlar.'
[1, 2, 3].product                       # => [[1], [2], [3]]
[1, 2, 3].product([4, 5])    # => [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]
[1, 2, 3].product([7, 8, 9]) # => [[1, 7], [1, 8], [1, 9], [2, 7], [2, 8], [2, 9], [3, 7], [3, 8], [3, 9]]

# collect   -'Blok içinde gelen kodu her elemana uygular, yeni Array döner.'
a = [1, 2, 3, 4, 5]
a.collect { |i| i * 2 }       # => [2, 4, 6, 8, 10]
a.collect { |i| "sayı #{i}" } # => ["sayı 1", "sayı 2", "sayı 3", "sayı 4", "sayı 5"]

# map   -'map de collect ile aynı işi yapar.'!' ile birlikte kullanılırsa kalıcı olarak değiştirirler.'
["Uğur", "Yeşim", "Ezel", "Ömer"].map { |isim| "İsim: #{isim}" } # => ["İsim: Uğur", "İsim: Yeşim", "İsim: Ezel", "İsim: Ömer"]
["Uğur", "Yeşim", "Ezel", "Ömer"].collect { |isim| "İsim: #{isim}" } # => ["İsim: Uğur", "İsim: Yeşim", "İsim: Ezel", "İsim: Ömer"]






# Array Dönüştürme methodları
["a", 1, "b", 2].to_a       # => ["a", 1, "b", 2]         # Kendisini döner
["a", 1, "b", 2].to_ary     # => ["a", 1, "b", 2]         # Kendisini döner
[["a", 1], ["b", 2]].to_h   # => {"a"=>1, "b"=>2}         # Hashe çevirir
["a", 1, "b", 2].to_s       # => "[\"a\", 1, \"b\", 2]"   # Düzenli bir string haline getirir
["a", 1, "b", 2].inspect    # => "[\"a\", 1, \"b\", 2]"   # Düzenli bir string haline getirir

# join -'Array elemanlarını birleştirip String'e çevirmeye yarar. Eğer parametre verirsek aradaki birleştiriciyi de belirlemiş oluruz.'
puts ["Furkan ","Akyol","21","furkanakyol@hotmail.com"].join        # => "Furkan Akyol21furkanakyol@hotmail.com"
puts ["Furkan ","Akyol","21","furkanakyol@hotmail.com"].join(", ")  # => "Furkan , Akyol, 21, furkanakyol@hotmail.com"