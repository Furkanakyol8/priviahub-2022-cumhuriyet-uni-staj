# Hashlerde karşılaştırma
h1 = {elma: 0, armut: 1}
h2 = {elma: 0, armut: 1, kivi: 2}
h1 < h2 # => true
h2 < h1 # => false
h1 < h1 # => false
h1 <= h2 # => true
h2 <= h1 # => false
h1 <= h1 # => true
h1 == h2 # => true

h1 = {elma: 0, armut: 1, kivi: 2}
h2 = {elma: 0, armut: 1}
h1 > h2 # => true
h2 > h1 # => false
h1 > h1 # => false
h1 >= h2 # => true
h2 >= h1 # => false
h1 >= h1 # => true

# Hashlere anahtarlarla yeni değer verebiliriz.
h = {elam: 0, armut: 1}
h[:elma] = 2 # => 2

# any? metodunda içlerinden biri false ya da nil dönmezse sonuç true olur.
h = {elma: 0, armut: 1, kivi: 2}
h.any?([:kivi, 0]) # => false
h.any? {|key, value| value < 3 } # => true

# assoc metodu, bir anahtar verilir eğer bulunursa anahtar ve değeri döndürülür.
h = {elma: 0, armut: 1, kivi: 2}
h.any?(:armut) # => [:armut, 1]

# Hash içerisinde bulunan tüm anahtarları ve değerleri siler ve boş bir hash nesnesi döndürür.
h = {"a" => 100, "b" => 200}
h.clear()   #=> {}

# Tüm nill değerli anahtarlar kaldırılarak yeni bir hash nesnesi döndürür. compact! kullanımıda vardır.
h = {elma: 0, armut: nil, kivi: 2, muz: nil}
h1 = h.compact
h1 # => {:elma=>0, :kivi=>2}

# default metodu, varsayılan bir değer belirlemek için kullanılır. Sözlükte bulunmayan bir değer çagırdıgımızda varsayılan değer döner.
h = Hash.new("varsayılan")
h.default    #=> "varsayılan"
h[:test]     #=> "varsayılan"

# Hash'den key kullanarak eleman silmek için delete method'u kullanılır
h = {"a" => 100, "b" => 200}
h.delete("a")   #=> 100
h               #=> {"b"=> 200}
# Block kullanıldığında, eğer olmayan bir key kullanılmışsa, bununla ilgili işlem yapmamızı sağlar:
h.delete(:telefon){ |key| "-#{key}- bulunamadı?" } # => "-telefon- bulunamadı?"

# delete_if de ise direk block kullanarak koşullu silme işlemi yapabiliyoruz.
h = { sayi1: 10, sayi2: 20, sayi3: 50 } # => {:sayi1=>10, :sayi2=>20, :sayi3=>50}
h.delete_if{ |k,v| v > 40 }                   # => {:sayi1=>10, :sayi2=>20}
h                                             # => {:sayi1=>10, :sayi2=>20}

# dig metodu, iç içe bulunan nesneleri anahtar yardımıyla yazdırmamızı sağlar.
h = {elma: {armut: {kivi: 2}}}
h.dig(:elma) # => {:armut=>{:kivi=>2}}
h.dig(:elma, :armut) # => {:kivi=>2}
h.dig(:elma, :armut, :Kivi) # => nil
h = {elma: {armut: [:a, :b, :c]}}
h.dig(:elma, :armut, 2) # => :c

# Hash'in içinde bulunan tüm anahtarları ve değerleri tek tek gezer.
h = {"a" => 100, "b" => 200}
h.each {|k, v| puts "#{k} is #{v}"}
# a is 100
# b is 200

# Hash de bulunan tüm anahtarları gezer.
h = {"a" => 100, "b" => 200}
h.each_key {|key| puts key}
#a
#b

# Hash'in içinde bulunan tüm anahtarları ve değerleri tek tek gezer.
h = { "a" => 100, "b" => 200, "c" => 0 }
h.each_pair { |key, value| puts "key: #{key}, value: #{value}" }
# key: a, value: 100
# key: b, value: 200
# key: c, value: 0

# Hash de var olan bütün değerleri tek tek gezer ve işlem yapılabilir
h = { "a" => 100, "b" => 200, "c" => 0 }
h.each_value { |value| puts "value: #{value}" }
# value: 100
# value: 200
# value: 0

# Hash nesnesinin boş olup olmamasına göre true veya false döndürür.
{}.empty? # => true

# İki farklı Hash nesnesinin anahtar ve değerlerini karşılaştırır hepsi aynı ise true değilse false döndürür.
h1 = {"a" => 100}
h2 = {"a" => 100}
h1.eql?(h2)  #=> true

# Verilen anahtar hariç diğerlerini döndürür.
h = { a: 100, b: 200, c: 300 }
h.except(:a)          #=> {:b=>200, :c=>300}

# Hash içerisindeki anahatarların varlığını sorgulayabilir bulamadığında farklı işlemler yapmasını veya bir mesaj yollaması sağlanabilir.
h = {"a" => 100, "b" => 200}
h.fetch("a")   #=> 100
h.fetch("c", "yok") #=> "yok"

# Hash de bulunan tüm anahtar ve değer çiftlerini gezer, blok olarak belirtilen kodu işler. select! kullanımıda vardır.
h = {"a" => 100, "b" => 200, "c" => 300}
h.select! {|a,d| a > "a"}   #=> {"b" => 200, "c" => 300}

# Hash içerisindeki tüm anahtar ve değerleri array nesnesi olarak birleştirir.
h = {elma: 0, armut: [:kivi, 3], muz: 2}
h.flatten # => [:elma, 0, :armut, [:kivi, 3], :muz, 2]
# sevilerini argüman olarak belirtebiliriz
h = {elma: 0, armut: [:kivi, [:muz, [:kivi, ]]]}
h.flatten(1) # => [:elma, 0, :armut, [:kivi, [:muz, [:kivi]]]]
h.flatten(2) # => [:elma, 0, :armut, :kivi, [:muz, [:kivi]]]
h.flatten(3) # => [:elma, 0, :armut, :kivi, :muz, [:kivi]]

# Hash içinde bir anahtarın var olup olmamasına göre true veya false döndürür.
h = {"a" => 100, "b" => 200}
h.has_key?("a")  #=> true

# Hash içinde bir değerin var olup olmamasına göre true veya false döndürür.
h = {"a" => 100, "b" => 200}
h.has_value?(100)  #=> true

# Hash içinde bir anahtarın var olup olmamasına göre true veya false döndürür.
h = {"a" => 100, "b" => 200}
h.has_key?("a")  #=> true

# Hash'in içeriğini başka bir Hash ile değiştirmek için kullanılır.
h = {"a" => 100, "b" => 200}
h.replace({"c" => 300, "d" => 400}) #=> {"c" => 300, "d" => 400}

# Hash nesnesinin içeriğini String olarak döndürür
h = {elma: 0, armut: 1, kivi: 2}
h.inspect # => "{:elma=>0, :armut=>1, :kivi=>2}"

# Hash içerisinde bulunan değerleri anahtar, anahtarları ise değer olarak çevirir.
h = {"a" => 100, "b" => 200}
h.invert   #=> {200 => "a", 100 => "b"}

# keep_if metodu ile blok'daki koşul true ise anahtar değer çiftini tutar değilse siler.
h = { sayi1: 10, sayi2: 20, sayi3: 50 } # => {:sayi1=>10, :sayi2=>20, :sayi3=>50}
h.keep_if{ |k,v| v < 20} # => {:sayi1=>10}
h                        # => {:sayi1=>10} 

# Argüman olarak beliritlen değerin anahtarını döndürür, değerini bulamazsa nill döndürür
h = {"a" => 100, "b" => 200}
h.key(200)  #=> "b"

# Hash içerisinde bulunan tüm anahtarları array nesnesi olarak verir.
h = {"a" => 100, "b" => 200, "c" => 300}
h.keys  #=> ["a","b","c"]

# key? metodu, hash nesnemizin içerisinde argüman olarak girdiğimiz anahtar varmı diye bakar varsa true yoksa false döndürür
h = {:kullanıcı_adi => "berkay", :sifre => "qwer"}
h.key?(:kullanıcı_adi)          # => true 

# Hash içerisinde var olan toplam anahtar ve değer çifti sayısı verir
h = {:kullanıcı_adi => "berkay", :sifre => "qwer"}
h.length # 2

# member metodu, hash nesnemizin içerisinde argüman olarak girdiğimiz anahtar varmı diye bakar varsa true yoksa false döndürür
h = {:kullanıcı_adi => "berkay", :sifre => "qwer"}
h.member?(:kullanıcı_adi)         # => true

=begin
İki farklı hash'i birleştirmeye yarar, hash'ler içerisinde aynı anahtarlar mevcut ise 
argüman olarak belirtilen hash'deki anahtar değerini birleştirme yapılan hash nesnesi anahtarının üzerine yazar.
Kalıcı olarak değişmesini istersek merge! kullanırız.
=end
h1 = {"a" => 100, "b" => 200}
h2 = {"b" => 250, "c" => 200}
h1.merge(h2)   #=> {"a" => 100, "b" => 250, "c" => 200}

=begin
rassoc metodu, argüman olarak belirtilen değeri hash nesnesi içerisinde arar,
eşleşen ilk anahtar değer çiftini array olarak döndürür.
=end
h = {elma: 0, armut: 1, kivi: 1}
h.rassoc(1) # => [:armut, 1]

# rehash metodu, hash'e anahtar olarak array verebiliriz.
a = [ "a", "b" ]
c = [ "c", "d" ]
h = { a => 100, c => 300 } # => {["a", "b"]=>100, ["c", "d"]=>300}

# Argüman olarak belirtilen anahtar ve değer çiftlerini var olan hash'deki anahtar ve değerlerin üstüne yazar.
h = {"a" => 100, "b" => 200}
h.replace({"c" => 300, "d" => 400}) #=> {"c" => 300, "d" => 400}

# Hash'de bulunan tüm anahtar ve değer çiftlerini gezer blok olarak belirtilen kodu işler. select! kullanımıda vardır.
h = {"a" => 100, "b" => 200, "c" => 300}
h.select! {|a,d| a > "a"}   #=> {"b" => 200, "c" => 300}

# Hash'in başındaki ilk anahtar değer çiftini siler.
h = {"a" => 100, "b" => 200}
h.shift  #=> ["a", 100]
h  #=> {"b" => 200}

# Hash içinde var olan toplam anahtar değer çifti sayısını verir.
h = {:kullanıcı_adi => "berkay", :sifre => "qwer"}
h.size # 2

# Argüman olarak verilen anahtarları girişleriyle birlikte yeni bir hash döndürür.
h = {elma: 0, armut: 1, kivi: 2}
h.slice(:kivi, :elma) # => {:kivi=>2, :elma=>0}

# Hash içerisine yeni bir anahtar değer çifti ekler.
h = {"a" => 100, "b" => 200}
h.store("c", 42)  #=> 42
h #=> {"a" => 100, "b" => 200, "c" => 42}

# Hash'deki her anahtar değer çiftini bir array olarak döndürür.
h = {elma: 0, armut: 1, kivi: 2}
h.to_a # => [[:elma, 0], [:armut, 1], [:kivi, 2]]

# Array'leri hash'e çevirir, eğer hash ise yine hash olarak döndürür.
h = {:foo => "bar"}
h.to_h                            # => {:foo=>"bar"}
h.to_hash                         # => {:foo=>"bar"} # metoduda aynı işlemi yapar.
[[:foo, "bar"]].to_h              # => {:foo=>"bar"}

# Stringe çevirmek için kullanılır.
h = {:foo => "bar"}
h.to_s              # => "{:foo=>\"bar\"}"

# Hash içinde bulunan tüm değerleri array nesnesi olarak verir.
h = {"a" => 100, "b" => 200, "c" => 300}
h.values()   #=> [100,200,300]

# Verilen anahtarlarla ilişkili değerleri içeren yeni bir dizi döndürür.
h = {"kedi" => "miyav", "köpek" => "havhav", "inek" => "mö"}
h.values_at("inek", "kedi")   #=> ["mö", "miyav]

