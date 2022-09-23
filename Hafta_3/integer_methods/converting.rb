# sqrt Metotu: Verilen değerin tamsayı karekökünü döndürür.

val1 = 4 val2 = 9 val3 = 64 val4 = 100
puts Math.sqrt(val1) # => 2.0
puts Math.sqrt(val2) # => 3.0
puts Math.sqrt(val3) # => 8.0
puts Math.sqrt(val4) # => 10.0


# try_convert Metotu: Bir integer'a dönüştürülmüş verilen değeri döndürür.

Integer.try_convert(1.25) # => 1


# '%' Metotu: Verilen değeri modulo döndürür.

a = [1, 2, 3, 4, 2]
a.count { |n| n % 2 == 0 } # => 3 (kaç tane 2'ye tam bölünen var?)


# '&' Metotu: Bit düzeyinde AND ve verilen değeri döndürür.

a = [1, 2, 3, 4]
b = [3, 1, 10, 22]
a & b # => [1, 3]


# '*' Metotu: Ürününü ve verilen değeri döndürür.

a = [1, 2, 3, 4, 5]
a.fill { |i| i * 5 }     # => [0, 5, 10, 15, 20]
a                        # => [0, 5, 10, 15, 20]


# '**' Metotu: Verilen değerin gücüne yükseltilmiş değeri döndürür.

2  **  3               # => 8 
2  **  -3              # => (1/8) 


# '+' Metotu: Toplamı ve verilen değeri döndürür.

2  +  2               # => 4 
-2  +  2              # => 0 


# '-' Metotu: Farkı ve verilen değeri döndürür.

4  -  2              # => -6 
-4  -  -2             # => -2 
4  -  2,0             # => 2,0 


# '/' Metotu: Bölümünü ve verilen değeri döndürür.

4 / 3              # => 1
4 / -3             # => -2
-4 / 3             # => -2
-4 / -3            # => 1


# '<<' Metotu: Sola doğru bir bit kaydırmadan sonraki değeri döndürür.

n = 0b11110000 
"%08b"  % ( n  <<  1 )   # => "111100000" 
"%08b"  % ( n  <<  3 )   # => "11110000000" 


# '>>' Metotu: Sağa doğru bir bit kaydırmadan sonraki değeri döndürür.

n = 0b11110000 
"%08b"  % ( n  >>  1 )   # => "01111000" 
"%08b"  % ( n  >>  3 )   # => "00011110" 


# '[]' Metotu: 'den bir bit dilimi döndürür.

n = 0b10  # => 2 
n [ 0 ]      # => 0 
n [ 1 ]      # => 1 


# '^' Metotu: Bit düzeyinde EXCLUSIVE OR öğesini ve verilen değeri döndürür.

"%04b"  % ( 0b0101  ^  0b0110 ) # => "0011"


# ceil Metotu: Büyük veya eşit en küçük sayıyı döndürür.

555.ceil(-1)  # => 560
555.ceil(-2)  # => 600


# chr Metotu: Değeriyle temsil edilen karakteri içeren 1 karakterlik bir dize döndürür.

65 . chr                    # => "A" 
0 .. chr                    # => "\x00" 


# digits Metotu: Öğesinin taban tabanı basamaklarını temsil eden bir tamsayı dizisini döndürür.

12345.digits      # => [5, 4, 3, 2, 1]
12345.digits(7)   # => [4, 6, 6, 0, 5]


# div Metotu: Verilen değere bölmenin tamsayı sonucunu döndürür.

4.div(3)      # => 1
4.div(-3)      # => -2
-4.div(3)      # => -2


# divmod Metotu: Verilen değere bölmenin bölüm ve kalan sonuçlarını içeren 2 elemanlı bir dizi döndürür.

11.divmod(4)              # => [2, 3]
11.divmod(-4)             # => [-3, -1]


# fdiv Metotu: Verilen değere Floatbölmenin sonucunu döndürür.

4 . fdiv ( 2 )       # => 2.0 
4 . fdiv ( -2 )       # => -2.0 
-4 . fdiv ( 2 )       # => -2.0 


# floor Metotu: 'den küçük veya eşit en büyük sayıyı döndürür.

555.floor(-1)  # => 550
555.floor(-2)  # => 500
-555.floor(-2) # => -600


# pow Metotu: Modüler üstelleştirmesini döndürür.

a.pow(b)     #=> a**b


# pred Metotu: Integer öncülünü döndürür.

1.pred  #=> 0
-1.pred #=> -2


# remainder Metotu: Verilen değere bölündükten sonra kalanı verir.

11.remainder(4)              # => 3
11.remainder(-4)             # => 3
-11.remainder(4)             # => -3
-11.remainder(-4)            # => -3


# round Metotu: Verilen hassasiyetle en yakın değere yuvarlanır.

555.round(-1)      # => 560
555.round(-2)      # => 600
555.round(-3)      # => 1000


# succ Metotu: Integer ardılını döndürür.

1.succ  #=> 2
-1.succ #=> 0


# to_f Metotu: Float'a dönüştürür.

1.to_f  # => 1.0
-1.to_f # => -1.0


# to_s Metotu: Verilen sayı tabanında yer değeri gösterimini içeren bir dize döndürür.

12345.to_s               # => "12345"
12345.to_s(2)            # => "11000000111001"
12345.to_s(8)            # => "30071"
12345.to_s(10)           # => "12345"


# truncate Metotu: Sıfıra doğru ondalık basamak hassasiyetine döndürür.

555.truncate(-1)  # => 550
555.truncate(-2)  # => 500
-555.truncate(-2) # => -500


















