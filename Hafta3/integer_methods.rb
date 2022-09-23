# sqrt metodu, girilen pozitif değerin karekökünü alır, kareköküne eşit veya negatif olmayan en büyük tam sayı değerini döndürür.
Integer.sqrt(0)        #=> 0
Integer.sqrt(1)        #=> 1
Integer.sqrt(24)       #=> 4
Integer.sqrt(25)       #=> 5

# ** üs alma işlemi gerçeklerştirir. Çıktımız integer, float, rasyonel veya karmaşık sayı olabilir
2 ** 3        #=> 8
2 ** -1       #=> (1/2)
2 ** 0.5      #=> 1.4142135623730951
(-1) ** 0.5   #=> (0.0+1.0i)
123456789 ** 2     #=> 15241578750190521
123456789 ** 1.2   #=> 5126464716.0993185

=begin
Sayıları karşılaştırma işlemini yapar 
ilk sayı ikinci sayıdan küçükse -1
ilk sayıya ikinci sayıya eşitse 0
ilk sayı ikinci sayıdan büyükse 1
=end

2 <=> 3 # => -1 
2 <=> 2 # =>  0
2 <=> 3 # =>  1

# abs metodu, girilen sayının mutlak değerinin döndürür.
(-12345).abs   #=> 12345
-12345.abs     #=> 12345
12345.abs      #=> 12345

# girilen sayının bit değerini döndürür.
(-2**1000-1).bit_length   #=> 1001
(-2**12-1).bit_length     #=> 13
(-2**12+1).bit_length     #=> 12
-0x101.bit_length         #=> 9
-0xff.bit_length          #=> 8
-2.bit_length             #=> 1
0.bit_length              #=> 0
1.bit_length              #=> 1
0x100.bit_length          #=> 9
(2**1000+1).bit_length    #=> 1001

# ceil metodu, Verilen sayıdan daha küçük olmayan en küçük tamsayıyı döndürür.
1.ceil           #=> 1
1.2.ceil         #=> 2

# chr metodu, belirtilen sayının ascii koduna karşılık gelen harfi döndürür.
65.chr    #=> "A"
230.chr   #=> "\xE6"

=begin
Bu metot, farklı sayı tipleri üzerinde işlem yaparken, işleme giren iki sayı için uyumlu bir ortak tip belirlemeye yarar. 
Uygulanan sayı ile parametredeki sayı aynı tipten iseler, onların oluşturduğu arrayi döndürür. 
Farklı tipten iseler, uygulanan sayı tipini prametredeki tipe dönüştürür ve onlardan oluşan arrayi verir.
=end
2.coerce(3) # => [2,3]
2.coerce(3.7) # => [3.7,2.0]
(0x3FFFFFFFFFFFFFFF+1).coerce(42)   #=> [42, 4611686018427387904]

# digits metodu, sayının basamak değerini döndürür(default=10)
12345.digits      #=> [5, 4, 3, 2, 1]
12345.digits(7)   #=> [4, 6, 6, 0, 5]
12345.digits(100) #=> [45, 23, 1]

# div metodu, tam sayıları bölmek için kullanılır
puts 6.div(3)

# divmod metodu bölüm ve kalanı verir.
d = 6.divmod(2) # böyle yazarsak sadece kalanı verir.
puts d
puts "Bölüm: #{d[0]}, Kalan: #{d[1]}"

# even? metodu, belirtilen sayının çift sayı olup olmadığına göre true veya false değeri döndürür.
2.even? # true

# fdiv metodu, sayının bölümünü kayan noktalı olarak verir.
puts 6.fdiv(4)

=begin
floor metodu, verilen sayıdan daha büyük olmayan en büyük tamsayıyı verir.
Eğer pozitif tam sayı ise kendini döndürür, negatif bir sayı ise 0'lı en büyük sayıyı döndürür.
=end
1.floor           #=> 1
1.floor(2)        #=> 1
18.floor(-1)      #=> 10
(-18).floor(-1)   #=> -20

# gcd metodu, iki tam sayının en büyük ortak bölenini verir.
36.gcd(60)                  #=> 12
2.gcd(2)                    #=> 2
3.gcd(-7)                   #=> 1

# gcdlcm metodu, iki tam sayının en büyük ortak bölenini ve en küçük ortak katını verir.
36.gcdlcm(60)                  #=> [12, 180]
2.gcdlcm(2)                    #=> [2, 2]
3.gcdlcm(-7)                   #=> [1, 21]

# inspect metodu, bir nesnenin içini görmemizi sağlar.
n = ["a",5,2.5]
puts n.inspect

# lcm iki tam sayının en küçük ortak katını verir.
36.lcm(60)                  #=> 180
2.lcm(2)                    #=> 2
3.lcm(-7)                   #=> 21

# modulo metodu, belirtilen sayının argümanına göre kalanını bize gösterir.
8.modulo(3)

# next metodu, tam sayının ardılını döndürür. 
1.next      #=> 2
(-1).next   #=> 0

# ord metodu, tam sayının kendisini döndürür.
97.ord   #=> 97

# pow metodu, üs alma işlemini yapar.
5.pow(2)

# pred metodu, tam sayının öncülünü ekrana yazdırır.
1.pred      #=> 0
(-1).pred   #=> -2

# remainder metodu, tam sayının bölümünün kalanını verir.
5.remainder(3)     #=> 2
-5.remainder(3)    #=> -2
5.remainder(-3)    #=> 2
-5.remainder(-3)   #=> -2
5.remainder(1.5)   #=> 0.5

# round metodu, en yakın ondalık sayıya yuvarlar.
1.round           #=> 1
1.round(2)        #=> 1
15.round(-1)      #=> 20
(-15).round(-1)   #=> -20
# istersek nasıl yuvarlaması gerektigini belirtebiliriz.
25.round(-1, half: :up)      #=> 30
25.round(-1, half: :down)    #=> 20
25.round(-1, half: :even)    #=> 20
(-25).round(-1, half: :up)   #=> -30
(-25).round(-1, half: :down) #=> -20
(-25).round(-1, half: :even) #=> -20

# size metodu girilen sayının kaç bit olduğunu döndürür.
1.size               #=> 8
-1.size              #=> 8
2147483647.size      #=> 8
(256**10 - 1).size   #=> 10

# succ metodu, girilen sayının ardılını döndürür.
1.succ      #=> 2
(-1).succ   #=> 0

5.to_f # tam sayıyı float'a çevirir.

5.to_s # tam sayıyı String'e çevirir.
# parantez kısmı tabanı belirtir.
12345.to_s(2) #=> "11000000111001"

5.to_r # tam sayıyı rasyonel sayıya çevirir.

# upto metodu, girilen değerden parantez içinde belirtilen değere kadar olan sayıları yazdırır.
5.upto(10) {|i| print i, " " }   #=> 5 6 7 8 9 10