=begin
  Hash uzunluğu / boyutunu bulmak [size, length, count]
=end
h = {:user => "Furkan", :password => "secret"}
h.length # => 2
h.size   # => 2
h.count  # => 2






=begin
  Key, Value Kontrolleri  [keys, values, values_at]
  keys ile Hash'e ait key'leri, values ile sadece key'lere karşılık gelen değerleri, values_at ile verdiğimiz key'lere ait değerleri alırız.
=end
h = {:user => "Furkan", :password => "secret", :email => "Furkan@hotmail.com"}
h.keys                        # => [:user, :password, :email]
h.values                      # => ["Furkan", "secret", "Furkan@hotmail.com"]
h.values_at(:user, :password) # => ["Furkan", "secret"]






=begin
  Hash yapılarında atama işlemleri
=end

# store
h = {:user => "Furkan", :password => "secret"}
h.store(:email, "Furkan@hotmail.com") # => "Furkan@hotmail.com"
h                                   # => {:user=>"Furkan", :password=>"secret", :email=>"Furkan@hotmail.com"}

h[:url] = "http://webbox.io"        # => "http://webbox.io"
h                                   # => {:user=>"Furkan", :password=>"secret", :email=>"Furkan@hotmail.com", :url=>"http://webbox.io"}

# default=   # Karşılığı olmayan keyler için varsayılan değeri atamak için kullanılır.
h = Hash.new
h                         # => {}
h.default = 100           # => 100
h[:user_weight]           # => 100
h[:foo]                   # => 100

# invert  # Hash'in key'leri ile value'lerini yer değiştirmek için kullanılır.
h = { "a" => 100, "b" => 200 } # => {"a"=>100, "b"=>200}
h.keys                         # => ["a", "b"]
h.invert                       # => {100=>"a", 200=>"b"}






=begin
  Hash yapılarında sorgulama methodları
=end
# key?, value?, has_key?, has_value?
h = {:user => "Furkan", :password => "secret", :email => "furkan@hotmail.com"}
h.key?(:user)          # => true
h.has_key?(:user)      # => true

h.key?(:full_name)     # => false
h.has_key?(:full_name) # => false

h.value?("Furkan")       # => true
h.has_value?("Furkan")   # => true

h.value?("Ali")       # => false
h.has_value?("Ali")   # => false

# include?, member?   key? ya da has_key? ile aynı işi yapar.
h = {:user => "vigo", :password => "secret", :email => "vigo@foo.com"}
h.include?(:user)        # => true
h.member?(:user)         # => true

# empty?  Hash'in içi boş mu değil mi kontrol eder
{:user => "Furkan", :password => "secret", :email => "furkan@hotmail.com"}.empty? # => false
{}.empty? # => true

# all?, any?, one?, none?  Kullanım şekilleri array'dekilerle tamamen aynı
{:is_admin => true, :notifications_enabled => true}.all?{ |option, value| value } # => true
{:is_admin => true, :notifications_enabled => false}.any?{ |option, value| value } # => true
{:is_admin => true, :notifications_enabled => false}.one?{ |option, value| value } # => true
{:is_admin => false, :notifications_enabled => false}.one?{ |option, value| value } # => false
{:is_admin => false, :notifications_enabled => false}.all?{ |option, value| value } # => false
{:is_admin => false, :notifications_enabled => false}.none?{ |option, value| value } # => true
{:is_admin => false, :notifications_enabled => false}.any?{ |option, value| value } # => false

# default     # Karşılığı olmayan keyler için varsayılan değer ataması yapılmışsa bunu bulur
h = Hash.new(10)
h[:user_age]            # => 10
h                       # => {}
h.default               # => 10
h.default(:user_weight) # => 10

# default_proc    # bu Hash'e ait Proc u gösterir
h = Hash.new { |hash, key| hash[key] = "User: #{key}" }
h.default_proc # => #<Proc:0x007f85f2250fd8@-:7>






=begin
  rehash
  Hash'e key olarak Array verebiliriz. Yani h[key] = value mantığında key olarak Array geçebiliriz.

=end
a = [ "a", "b" ]
c = [ "c", "d" ]
h = { a => 100, c => 300 } # => {["a", "b"]=>100, ["c", "d"]=>300}

h[a]                       # => 100
h[["a", "b"]]              # => 100
h[c]                       # => 300
h[["c", "d"]]              # => 300
# Şimdi işleri karıştıralım. a Array'inin ilk değerini değiştirelim. Bakalım h ne olacak?
a[0] = "v"                 # => "v"
a                          # => ["v", "b"]
h[a]                       # => nil ????????
# h[a] nil döndü. İşte şimdi rehash kullanarak problemi ortadan kaldıracağız.
h.rehash                   # => {["v", "b"]=>100, ["c", "d"]=>300}
h[a]                       # => 100






=begin
  Tip dönüştürme methodları [to_hash, to_h, to_a, to_s]
  to_h ve to_hash eğer kendisi Hash ise sonuç yine kendisi olur. to_a ise Hash'den Array yapmak için kullanılır.
  Tahmin edeceğiniz gibi to_s de String'e çevirmek için kullanılır.
=end
h = {:foo => "bar"}
h                                 # => {:foo=>"bar"}
h.to_hash                         # => {:foo=>"bar"}
h.to_h                            # => {:foo=>"bar"}
["foo", "bar"].respond_to?(:to_h) # => true
[[:foo, "bar"]].to_h              # => {:foo=>"bar"}

[["a", 1], ["b", 2]].to_h   # => {"a"=>1, "b"=>2}

h.to_a                            # => [[:foo, "bar"]]
h.to_s                            # => "{:foo=>\"bar\"}"






=begin
  Hash yapısında eşitlik kontrolleri  [ == , eql?]
  Hash içinde key'lerin sırası eşitlik kontrolünde önemli değildir. İçerik önemlidir. Eşitlik kontrolü için kullanılırlar.
=end
h1 = { "a" => 100, "c" => 200 }
h2 = { 70 => 350, "x" => 22, "y" => 11 }
h3 = { "y" => 11, "x" => 22, 70 => 350 }

h1 == h2 # => false
h2 == h3 # => true

h1.eql?(h2)  # => false
h2.eql?(h3)  # => true






=begin
  Hash yapılarında silme işlemleri
=end

# shift   # Hash'den key-value çiftini silmek için kullanılır. Her seferinde ilk key-value çiftini siler.
h = {:user => "Furkan", :password => "secret", :email => "furkan@hotmail.com"}
h.shift # => [:user, "Furkan"]
h       # => {:password=>"secret", :email=>"furkan@hotmail.com"}
h.shift # => [:password, "secret"]
h       # => {:email=>"furkan@hotmail.com"}
h.shift # => [:email, "furkan@hotmail.com"]
h       # => {}

# delete    # Hash'den key kullanarak eleman silmek için delete method'u kullanılır.
h = {:user => "Furkan", :password => "secret", :email => "furkan@hotmail.com"}
h.delete(:user)   # => "Furkan"
h       # => {:password => "secret", :email => "furkan@hotmail.com"}
h.delete(:phone){ |key| "-#{key}- bulunamadı?" } # => "-phone- bulunamadı?"

# delete_if   # Block kullanarak koşullu silme işlemi yapabilmemizi sağlar.
h = { point_a: 10, point_b: 20, point_c: 50 } # => {:point_a=>10, :point_b=>20, :point_c=>50}
h.delete_if{ |key,value| value > 40 }                   # => {:point_a=>10, :point_b=>20}
puts h # => {:point_a=>10, :point_b=>20}

# keep_if   # delete_if'in tam tersidir. sağlanan koşulu tutar, gerisini siler
h = { point_a: 10, point_b: 20, point_c: 50 } # => {:point_a=>10, :point_b=>20, :point_c=>50}
h.keep_if{ |key,value| value > 40 }                   # => {:point_a=>10, :point_b=>20}
puts h # => {:point_c=>50}

# compact   # nil değerleri siler.
h = {foo: 0, bar: nil, baz: 2, bat: nil}
h1 = h.compact
h1 # => {:foo=>0, :baz=>2}
# '!' işareti ile birlikte kullanılırsa kalıcı olarak değiştirir.






=begin
  Hash yapılarında çağırma işlemleri
=end

# fetch & fetch_values
h = {:user => "Furkan", :password => "secret"}
puts h.fetch(:user) # "Furkan"
#puts h.fetch(:email)  # KeyError: key not found: :email
# default key ataması da yapabiliriz
h = {:user => "vigo", :password => "secret"}
h.fetch(:user)               # => "vigo"
h.fetch(:email, "Not found") # => "Not found"
# Bloklarla birlikte de kullanabiliriz
h = {:user => "Furkan", :password => "secret"}
h.fetch(:email) { |element| "key: #{element} is not defined!" } # => "key: email is not defined!"

puts h.fetch_values(:user)  # => "Furkan"

# assoc
h = {foo: 0, bar: 1, baz: 2}
h.assoc(:bar) # => [:bar, 1]






=begin
  Hash birleştirme, parçalama işlemleri
=end

# merge   # iki hashi birleştirmek için kullanılır
h1 = { "a" => 100, "b" => 200 }
h2 = { "x" => 1, "y" => 2, "z" => 3 }
h1.merge(h2) # => {"a"=>100, "b"=>200, "x"=>1, "y"=>2, "z"=>3}
h1           # => {"a"=>100, "b"=>200}
# update, merge!    # merge işlemini kalıcı hale getirir
h1 = { "a" => 100, "b" => 200 }
h2 = { "x" => 1, "y" => 2, "z" => 3 }
h1.update(h2) # => {"a"=>100, "b"=>200, "x"=>1, "y"=>2, "z"=>3}
h1            # => {"a"=>100, "b"=>200, "x"=>1, "y"=>2, "z"=>3}

h1 = { "a" => 100, "b" => 200 }
h2 = { "x" => 1, "y" => 2, "z" => 3 }
h1.merge!(h2) # => {"a"=>100, "b"=>200, "x"=>1, "y"=>2, "z"=>3}
h1            # => {"a"=>100, "b"=>200, "x"=>1, "y"=>2, "z"=>3}








=begin
  replace
  Hash'in içeriğini başka bir Hash ile değiştirmek için kullanılır. Aslında varolan Hash'i başka bir Hash'e çevirmek gibidir.
  Neden replace kullanılıyor? Tamamen hafızadaki adresleme ile ilgili. replace kullanıldığı zaman, aynı Hash kullanılıyor,
  yeni bir Hash instance'ı yaratılmıyor.
=end
h1 = { "a" => 100, "b" => 200, "c" => 0 }
h1.__id__ # => 70320602334320
# Hafızadaki h1 Hash'nin nesne referansı : 70320602334320. Şimdir replace ile değerlerini değiştirelim:
h1.replace({ "foo" => 1, "bar" => 2 })
h1        # => {"foo"=>1, "bar"=>2}
h1.__id__ # => 70320602334320
# Referansları aynı : 70320602334320. Eğer direkt olarak atama yapsakdık h1 gibi görünen ama bambaşka yepyeni bir Hash'imiz olacaktı.






=begin
  Hash iterasyon ve blok kullanımı
=end

# each & each_pair
h = { "a" => 100, "b" => 200, "c" => 0 }
h.each { |key, value| puts "key: #{key}, value: #{value}" }
h.each_pair { |key, value| puts "key: #{key}, value: #{value}" }
# key: a, value: 100
# key: b, value: 200
# key: c, value: 0

# each_value, each_key   # each_value sadece value, each_key de sadece key döner.
h = { "a" => 100, "b" => 200, "c" => 0 }

h.each_value { |value| puts "value: #{value}" }
# value: 100
# value: 200
# value: 0
h.each_key { |key| puts "key: #{key}" }
# key: a
# key: b
# key: c

# each_entry    # Hash'deki key-value çifti Array şeklinde bir entry olur:
h = { "a" => 100, "b" => 200, "c" => 0 }
h.each_entry{ |o| puts "o: #{o}" }
# o: ["a", 100]
# o: ["b", 200]
# o: ["c", 0]

# each_slice    # each_slice ile entry'leri parçacıklara ayırırız:
h = { "a" => 100, "b" => 200, "c" => 0 }
# 2'li dilimlere ayırdık
h.each_slice(2){ |s| puts "slice: #{s}" }
# slice: [["a", 100], ["b", 200]]
# slice: [["c", 0]]

# each_cons   # each_slice gibi çalışır ama farklıdır:
h = { "a" => 100, "b" => 200, "c" => 0 }
h.each_cons(2){ |s| puts "grup: #{s}" }
# grup: [["a", 100], ["b", 200]]
# grup: [["b", 200], ["c", 0]]    # [["b",200]] tekrar etti

# compare_by_identity, compare_by_identity?   # Hash'in key ve value'leri birbirine benziyor mu?
h = { "a" => 1, "b" => 2, :c => "c" }
h["a"] # => 1
h.compare_by_identity? # => false
h.compare_by_identity  # => {"a"=>1, "b"=>2, :c=>"c"}
h.compare_by_identity? # => true

# # acaba key ile value benziyormu?
h["a"]                 # => nil
# # burada benzer :)
h[:c]                  # => "c"
h["a"]                 # => nil
# burada benzer
h[:c]                  # => "c"







