# Length ve Size Metotları: Array'in boyu, içinde kaç eleman olduğu ile ilgili bilgiyi almak için kullanılırlar.

m = "merhaba"
"merhaba".size  # => 7
"merhaba".length  # => 7


# empty? Metotu: Array boşmu? İçinde eleman var mı? sorularının yanıtını almak için kullanılır.

[1, 2, 3, 4].empty?  # => false
[].empty?            # => true


# bytesize Metotu: Verilen dizenin bayt cinsinden uzunluğunu almak için kullanılan bir String sınıfı yöntemidir.

puts "String Class".bytesize # => 12
puts "Methods".bytesize      # => 7


# count Metotu: Array'in boyu, içinde kaç eleman olduğu ile ilgili bilgiyi almak için kullanılır.

a = [1, 2, 3, 4, 2]

a.count                    # => 5 (eleman sayısı)
a.count(2)                 # => 2 (kaç tane 2 var?)
a.count { |n| n % 2 == 0 } # => 3 (kaç tane 2'ye tam bölünen var?)


=begin
    
index Metotu:
Array içindeki elemanlar sıralı bir şekilde dururlar. Bu sıraya Index denir. 0'dan başlar. 
Yani ilk eleman demek Array'in 0.elemanı demektir. İsteğimiz elemanı almak için ya Array[index] ya da Array.fetch(index) yöntemlerini kullanabiliriz.
rindex ile ise sağdan hizalı index'e göre elemana ulaşıyoruz.

=end

"merhaba".index("m") # => 0
"merhaba".index("ba") # => 5

a = [ "a", "b", "b", "b", "c" ]

a.rindex("b")  # => 3  (3 tane b var, en sağdaki son b'yi verdi)
a.rindex("z")  # => nil

a = ["Vesile", "Eren", "Nesibe", "Yasin"]
a[0]                       # => "Vesile"
a.fetch(0)                 # => "Vesile"



    
# include? Metotu: Acaba verdiğim eleman Array'in içinde mi? Verdiğim eleman bu dizinin üyesi mi? sorularının yanıtını bulmak için kullanırız.

[1, 2, 3, 4].include?(3)                   # => true

["Vesile", "Eren", "Nesibe", "Yasin"].include?("Vesile") # => true
["Vesile", "Eren", "Nesibe", "Yasin"].include?("Taha") # => false


# match Metotu: String içerisinde arama yapmaya yarar.

"merhaba".match("(a)")  # => <MatchData "a" 1:"a"> (1 tane yakaladı, (a) ve Array geldi)
"merhaba".match("(a)")[0]  # => "a" (yakalanan)


# start_with? Metotu: Method adı ? ilen bitiyor ise, bir kontrol vardır ve sonucun Boolean yani true ya da false döndüğü anlamı vardır.

"merhaba".start_with?("m") # => true
"merhaba".start_with?("mer") # => true
"merhaba".start_with?("f") # => false


# end_with? Metotu: Method adı ? ilen bitiyor ise, bir kontrol vardır ve sonucun Boolean yani true ya da false döndüğü anlamı vardır.

"merhaba".end_with?("a") # => true
"merhaba".end_with?("haba") # => true
"merhaba".end_with?("zoo") # => false


# hash Metotu: Eğer hash method’unu çağırırsak, Ruby bize ilgili objenin Fixnum türünde sayısal değerini üretir ve verir.

o = Object.new # => (<Object:0x007f8c3b0a3420>)
o.hash         # => -229260864779029724


