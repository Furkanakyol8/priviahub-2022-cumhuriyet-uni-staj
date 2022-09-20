=begin
    Bu yazımızda stringlere uygulanan belirli başlı kolaylaştırıcı hazır methodların neler olduğunu ve
  bu methodların kullanım şekillerini öğreneceğiz.
=end



# String uzunluk hesaplama [size]
"ruby".size # => 4
# Bir String'in boş olup olmadığını kontrol etme [size]
"".size == 0 # => true 'Boş bir stringin uzunluğu 0 olarak tanımlanır'



# Stringlerde formatlama [#{}]
name = "Furkan"
puts "Hello #{name}"  # => "Hello Furkan"



# Stringleri parçalama
string = "abc123"
puts string[0,3] # => "abc"
puts string[3,3] # => "123" 'İndex numarasına göre parçalara ayırır'



# Bir stringin başka bir string içerip içermediğini anlamak
# include?
string = "Today is Saturday"
puts string.include?("Saturday") # => "true"

# index
string = "Today is Sunday"
string.index("day") # => "2"  'day stringi iki kere geçtiğinden sonuç 2 olur'



# Stringlerin içini doldurma
binary_string = "1101"
puts binary_string.rjust(8, '0') # => "00001101"  'Toplam string uzunluğu 8 index olana kadar sol tarafa 0 yazar'

binary_string = "1111"
puts binary_string.ljust(8, "0") # => "11110000"  'Toplam string uzunluğu 8 index olana kadar sağ tarafa 0 yazar'



# Stringlerde büyük harf küçük harf duyarlılığı
lang1 = "ruby"
lang2 = "RUBY"
puts "lang1: #{lang1.upcase}" # => "RUBY"
puts "lang2: #{lang2.downcase}" # => "ruby"
# upcase ve downcase methodları sonuna '!' eklenerek kullanılırsa string içeriğini kalıcı olarak değiştirir.



# Stringlerde fazlalık boşlukları ortadan kaldırmak
extra_space = "   test word   "
puts extra_space.strip # => "test word"
# strip methodunun sonuna '!' eklenerek kullanılırsa string içeriğini kalıcı olarak değiştirir.

puts extra_space.lstrip # "test word   " 'stringin sol tarafındaki gereksiz boşlukları siler'
puts extra_space.rstrip # "   test word" 'stringin sağ tarafındaki gereksiz boşlukları siler'



# String içeriği kontrolleri 'start_with?' & ' end_with?'
string = "ruby programming"

puts string.start_with? "ruby"  # => true -'string içeriğinin 'ruby' ile başlayıp başlamadığını kontrol eder'
puts string.end_with? "programming" # => true -'string içerğinin 'programming' ile bitip bitmediğini kontrol eder'



# String içeriğinde silme işlemleri  'delete_prefix' & 'delete_suffix'
string = "bacon is expensive"
puts string.delete_suffix("is expensive") # => "bacon"  -'stringin sonundan is expensive silinir'
puts string.delete_prefix("bacon is ") # => "expensive"  -'stringin başından bacon is silinir'
# delete_suffix & delete_prefix methodları sonunna '!' eklenirse string içeriğini kalıcı olarak değiştirir.



# Bir stringi dizi karakterlerine dönüştürmek
string = "My name is Furkan"
puts string.split.inspect # => ["My", "name", "is", "Furkan"]
# Default olarak split methodu boşluk karakteri gördüğünde dizi karakterine dönüştürür.

string = "kalem,silgi,kağıt,makas,uhu"
puts string.split(",").inspect # => ["kalem", "silgi", "kağıt", "makas", "uhu"]
# Eğer split methodu içerisine bir karakter belirtirsek, o karakteri gördüğünde dönüştürme işlemini yapacaktır.




# Bir stringi farklı veri tiplerine dönüştürmek
puts "55".to_i  # => 55  integer
puts "55".to_c  # => 55+0i  char
puts "55".to_f  # => 55.0  float
puts "55".to_r  # => 55/1  regex



# Bir string içeriğinin sayı olup olmadığını kontrol etme
puts "1234".match?(/\A-?\d+\Z/) #=> true  -'/\A-?\d+\Z/' ifadesi sayıyı sembolize eder



# Stringlere karakter eklemek
string = ""

string << "hello"
string << " "
string << "there"
=begin
   Stringlere karakter eklemek için '+=' kullanılmamalıdır çünkü bu her seferinde yeni bir string oluşturur.
  '+=' yerine '<<' methodu tercih edilmelidir.
=end



# Bir stringin karakterleri üzerinde gezinme
"rubyguides".each_char {|ch| puts ch} # => r u b y g u i d e s



# Bir string karakterlerinden array oluşturma
array_of_characters = "rubyguides".chars
puts array_of_characters.inspect  # => ["r", "u", "b", "y", "g", "u", "i", "d", "e", "s"]



# Çok satırlı string oluşturma (iki farklı yolu vardır)
b = <<-STRING
aaa
bbb
ccc
STRING
puts b  # =>  aaa bbb ccc

a = %Q(aaa
bbb
ccc
)
puts a  # => aaa bbb ccc



# Bir string içerisindeki metni değiştirme  [gsub]
string = "We have many dogs"
puts string.gsub("dogs", "cats") # => "We have many cats"
=begin
  gsub ilk parametresi değiştirilecek metin, ikinci parametresi yerine yazılmak istenilen metin
  gsub methodunun sonuna '!' işareti konulursa string içeriğini kalıcı olarak değiştirir
  gsub methodu ayrıca düzenli ifadeleri argüman olarak alır, böylece tam kelimeler yerine kalıplar da değiştirilebilir.
=end
string = "We have 3 cats"
puts string.gsub(/\d+/, "5")  # => "We have 5 cats" -'/\d+/ kalıbı sayıları ifade eden bir kalıptır'



# input alınarak oluşturulan stringlerde fazlalık yeni satırı (\n) kaldırmak  [chomp]
puts "What's your name?"
puts name = gets.chomp
# chomp methodundan sonra '!' işareti konulursa string içeriğini kalıcı olarak değiştirir.



# String'ten son karakteri kaldırmak
abcd = "abcd?".chomp("?") # Kaldırmak istenen son karakter, chomp methoduna parametre olarak verilir
puts abcd #=> abcd



=begin
   Stringler bir bayt dizisi olarak saklanır, kodlamalarına göre görebileceğiniz karakterlere dönüştürülür. Örneğin,
  ASCII kodlamasındaki 65 sayısı "A" harfini temsil eder. Ancak, farklı dillerden (Çince vb.) ve hatta emojilerden karakterleri
  temsil etmenize olanak tanıyan UTF-8 gibi daha karmaşık kodlamalar da vardır.
  Bir string için geçerli kodlamayı bulmak için 'encoding' methodu kullanılabilir.
=end
puts "abc".encoding # => "UTF-8"

=begin
   Diskten bir dosya okurken veya bir web sitesinden bazı veriler indirirken encoding uyuşmazlık sorunlarıyla karşılaşabiliriz.
  Bu sorun genellikle 'force_encoding' çözülür.
=end
x = "abcd".force_encoding("UTF-32")
puts x.encoding # => "UTF-32"



# String içerisinde karakterleri saymak [count]
str = "aaab"

str.count("a") # => 3
str.count("b") # => 1




