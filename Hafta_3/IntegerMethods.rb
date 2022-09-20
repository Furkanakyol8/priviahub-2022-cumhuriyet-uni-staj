# İnteger ifadelerin mutlak değerini almak  [abs]
puts (-12345).abs   #=> 12345
puts -12345.abs     #=> 12345
puts 12345.abs      #=> 12345


=begin
  Kendinden büyük veya ona eşit en küçük sayıyı ondalık basamak şeklinde döndürmek [ceil]
  ceil methodu içerisine girilen parametrelere göre basamak sayısı belirlenir.
=end
puts 555.ceil(-1)  # => 560
puts 555.ceil(-2)  # => 600
puts -555.ceil(-2) # => -500
puts 555.ceil(-3)  # => 1000
puts 3.14.ceil(1)  # => 3.2
puts 3.14.ceil(0)  # => 4



# Bölme ve kalan işlemleri  [div & fdiv & divmod & remainder]
puts 4.div(3)   # => 1
puts 4.div(-3)  # => -2
# Eğer sonucun ondalık sayı olarak dönmesini istiyorsak 'fdiv' kullanabiliriz.
puts 5.fdiv(2)  # => 2.5
puts 22.fdiv(7) # => 3.142857142857143
# div methodu bölme sonucunu tam sayı olarak döndürürken divmod bölme sonucunu be bölümden kalanı array olarak döndürür
puts 11.divmod(4).inspect   # => [2, 3]
puts 11.divmod(-4).inspect  # => [-3, -1]
puts 12.divmod(4).inspect   # => [3, 0]
puts 12.divmod(-4).inspect  # => [-3, 0]
# remainder methodu bölme işleminden sonra kalan değeri verir
puts 11.remainder(4)    # => 3
puts 12.remainder(4)    # => 0



# çift sayı mı? kontrolü [even?]
puts 4.even?  # => "true"
puts 3.even?  # => "false"

# Tek sayı mı? kontrolü [odd?]
puts 5.odd?   # => "true"
puts 2.odd?   # => "false"

# Sıfır mı? kontrolü [zero?]
puts 5.zero?  # => "false"
puts 0.zero?  # => "true"



=begin
  Kendinden küçük veya ona eşit en büyük sayıyı, ondalık basamak şelinde döndürmek. [floor]
  floor methodu içerisine girilen parametrelere göre basamak sayısı belirlenir.
=end
puts 555.floor(-1)  # => 550
puts 555.floor(-2)  # => 500
puts -555.floor(-2) # => -600
puts 555.floor(-3)  # => 0
puts 3.14.floor(1)  # => 3.1
puts 3.14.floor(0)  # => 3



# İki tamsayının en büyük ortak bölenini bulmak [gcd]
puts 36.gcd(60)   # => 12
puts 2.gcd(2)     # => 2
puts 3.gcd(-7)    # => 1

# İki tamsayının en küçük ortak katını bulmak [lcm]
puts 36.lcm(60)   # => 180
puts 18.lcm(2)    # => 18

# İki tamsayının hem en büyük ortak böleni hem de en küçük ortak katını bulmak [gcdlcm]
puts 36.gcdlcm(60).inspect  #=> [12, 180]
puts 2.gcdlcm(2).inspect    #=> [2, 2]
puts 3.gcdlcm(-7).inspect  #=> [1, 21]




# Sayının bir fazlasını elde etmek  [succ & next]
puts 1.succ   # => 2
puts -5.succ  # => -4

puts -6.next  # => -5
puts 1.next   # => 2

# Sayının bir eksiğini elde etmek [pred]
puts 5.pred   # => 4
puts -4.pred  # => -5



# Bir sayının üssünü almak  [pow]
puts 5.pow(2)   # => 25
puts 10.pow(3)  # => 1000


=begin
   Float değerleri en yakın tam sayıya yuvarlama [round]
  round methodu parametre ile birlikte kullanılırsa hangi en yakın ondalık basamağa yuvarlanacağını da belirleyebilir
=end
puts 55.51.round    # => 56
puts 55.49.round    # => 55
puts 555.round(-1)  # => 560
puts 555.round(-2)  # => 600
# Eğer istersek round methodunu aşağıya veya yukarıya yuvarlamaya da zorlayabiliriz
puts 25.round(-1, half: :up)      # => 30
puts 25.round(-1, half: :down)    # => 20



# İnteger değerin makine gösterimindeki bayt sayısını döndürmek [size]
puts 1.size        # => 8
puts 10.size       # => 8
puts 10242048.size # => 8
puts 1024204810242048102420481024.size # => 12



# İnteger değerin bit cinsinden uzunluğu/boyu nu bulmak [bit_length]
puts 1.bit_length # => 1
puts 15.bit_length # => 4
puts 255.bit_length # => 8



# İnteger tipindeki bir veriyi farklı veri tiplerine dönüştürmek
# float [to_f]
puts 1.to_f  # => 1.0
puts -1.to_f # => -1.0
# rational [to_r]
puts 1.to_r        #=> (1/1)
puts (54.595).to_r  #=> 1920890794189783/35184372088832
# string [to_s] -'Default olarak 10'luk sayı tabanında dönüştürür fakat parametre belirterek farklı tabanlarda yazırabiliriz'
puts 12345.to_s               # => "12345"
puts 12345.to_s(2)            # => "11000000111001"
puts 12345.to_s(8)            # => "30071"
puts 12345.to_s(10)           # => "12345"
puts 12345.to_s(16)           # => "3039"
puts 12345.to_s(36)           # => "9ix"
puts 78546939656932.to_s(36)  # => "rubyrules"
