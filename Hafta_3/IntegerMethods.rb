# İnteger ifadelerin mutlak değerini almak  [abs]
(-12345).abs   #=> 12345
-12345.abs     #=> 12345
12345.abs      #=> 12345


=begin
  Kendinden büyük veya ona eşit en küçük sayıyı ondalık basamak şeklinde döndürmek [ceil]
  ceil methodu içerisine girilen parametrelere göre basamak sayısı belirlenir.
=end
555.ceil(-1)  # => 560
555.ceil(-2)  # => 600
-555.ceil(-2) # => -500
555.ceil(-3)  # => 1000
3.14.ceil(1)  # => 3.2
3.14.ceil(0)  # => 4



# Bölme ve kalan işlemleri  [div & fdiv & divmod & remainder]
4.div(3)   # => 1
4.div(-3)  # => -2
# Eğer sonucun ondalık sayı olarak dönmesini istiyorsak 'fdiv' kullanabiliriz.
5.fdiv(2)  # => 2.5
22.fdiv(7) # => 3.142857142857143
# div methodu bölme sonucunu tam sayı olarak döndürürken divmod bölme sonucunu be bölümden kalanı array olarak döndürür
11.divmod(4).inspect   # => [2, 3]
11.divmod(-4).inspect  # => [-3, -1]
12.divmod(4).inspect   # => [3, 0]
12.divmod(-4).inspect  # => [-3, 0]
# remainder methodu bölme işleminden sonra kalan değeri verir
11.remainder(4)    # => 3
12.remainder(4)    # => 0



# çift sayı mı? kontrolü [even?]
4.even?  # => "true"
3.even?  # => "false"

# Tek sayı mı? kontrolü [odd?]
5.odd?   # => "true"
2.odd?   # => "false"

# Sıfır mı? kontrolü [zero?]
5.zero?  # => "false"
0.zero?  # => "true"



=begin
  Kendinden küçük veya ona eşit en büyük sayıyı, ondalık basamak şelinde döndürmek. [floor]
  floor methodu içerisine girilen parametrelere göre basamak sayısı belirlenir.
=end
555.floor(-1)  # => 550
555.floor(-2)  # => 500
-555.floor(-2) # => -600
555.floor(-3)  # => 0
3.14.floor(1)  # => 3.1
3.14.floor(0)  # => 3



# İki tamsayının en büyük ortak bölenini bulmak [gcd]
36.gcd(60)   # => 12
2.gcd(2)     # => 2
3.gcd(-7)    # => 1

# İki tamsayının en küçük ortak katını bulmak [lcm]
36.lcm(60)   # => 180
18.lcm(2)    # => 18

# İki tamsayının hem en büyük ortak böleni hem de en küçük ortak katını bulmak [gcdlcm]
36.gcdlcm(60).inspect  #=> [12, 180]
2.gcdlcm(2).inspect    #=> [2, 2]
3.gcdlcm(-7).inspect  #=> [1, 21]




# Sayının bir fazlasını elde etmek  [succ & next]
1.succ   # => 2
-5.succ  # => -4

-6.next  # => -5
1.next   # => 2

# Sayının bir eksiğini elde etmek [pred]
5.pred   # => 4
-4.pred  # => -5



# Bir sayının üssünü almak  [pow]
5.pow(2)   # => 25
10.pow(3)  # => 1000


=begin
   Float değerleri en yakın tam sayıya yuvarlama [round]
  round methodu parametre ile birlikte kullanılırsa hangi en yakın ondalık basamağa yuvarlanacağını da belirleyebilir
=end
55.51.round    # => 56
55.49.round    # => 55
555.round(-1)  # => 560
555.round(-2)  # => 600
# Eğer istersek round methodunu aşağıya veya yukarıya yuvarlamaya da zorlayabiliriz
25.round(-1, half: :up)      # => 30
25.round(-1, half: :down)    # => 20



# İnteger değerin makine gösterimindeki bayt sayısını döndürmek [size]
1.size        # => 8
10.size       # => 8
10242048.size # => 8
1024204810242048102420481024.size # => 12



# İnteger değerin bit cinsinden uzunluğu/boyu nu bulmak [bit_length]
1.bit_length # => 1
15.bit_length # => 4
255.bit_length # => 8



# İnteger tipindeki bir veriyi farklı veri tiplerine dönüştürmek
# float [to_f]
1.to_f  # => 1.0
-1.to_f # => -1.0
# rational [to_r]
1.to_r        #=> (1/1)
(54.595).to_r  #=> 1920890794189783/35184372088832
# string [to_s] -'Default olarak 10'luk sayı tabanında dönüştürür fakat parametre belirterek farklı tabanlarda yazırabiliriz'
12345.to_s               # => "12345"
12345.to_s(2)            # => "11000000111001"
12345.to_s(8)            # => "30071"
12345.to_s(10)           # => "12345"
12345.to_s(16)           # => "3039"
12345.to_s(36)           # => "9ix"
78546939656932.to_s(36)  # => "rubyrules"
