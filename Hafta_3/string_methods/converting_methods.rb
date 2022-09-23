# '*' Metotu: Birden çok kopyasının birleştirilmesini döndürür.

"Merhaba!" * 3 # => "Merhaba!Merhaba!Merhaba!"
"Merhaba!" * 0 # => ""


# '+' Metotu: string + string = yeni string için kullanılır.

"Merhaba" + " " + "Dünya" # => "Merhaba Dünya"


# center Metotu: Stringi çevrelemek için kullanılır.

"vesile".center(12, "*") # => "****vesile****"


# concat Metotu: Array sonuna Array eklemek için kullanılır.

a = [1, 2, 3]
a.concat([4, 5, 6])
a  # => [1, 2, 3, 4, 5, 6]


# prepend Metotu: Stringin önüne başka bir string eklemek için kullanılır.

"dünya".prepend("Merhaba ") # => "Merhaba dünya"


=begin
    
ljust, rjust Metotları:
ljust stringin sonuna istenilen kadar boşluk veya girilen karakteri koyar.
rjust ise tam tersi stringin önüne aynı işlemleri yapar.

=end

"merhaba".ljust(20)      # => "merhaba             "
"merhaba".ljust(20, "*") # => "merhaba*************"
"merhaba".rjust(20)      # => "             merhaba"
"merhaba".rjust(20, "*") # => "*************merhaba"


=begin
    
dump Metotu:
Stringi giirilen sayı formatına göre değerlerini döndüren bir metottur.
Yani ascii değerini gösterir.

=end

"Merhaba".dump # => "\"Merhaba\""
"merhaba".getbyte(0) # => 109 # m'in ascii değeri


# '%' Metotu: Süslü parantezler arasında kalan her şey concat (yani toplanarak) edilir ve String olarak çıktı verir ve tırnakları escape eder.

%{Merhaba Dünya Ben vesile nasılsınız?} # => "Merhaba Dünya Ben vesile nasılsınız?"

%{Bu işlemlerin %80'i "uydurma"} # => "Bu işlemlerin %80'i \"uydurma\""


# chr Metotu: İlk karakteri döndürür.

"ab".chr # => "a"


=begin
    
to_s, to_str Metotu:
to_s, Stringe çevirmek için kullanılır.
to_str, bu da stringe çevirmek için kullanılır.

=end

5.to_s # => "5" (Sayısal değeri String'e çevirdik.)
"merhaba".to_s    # => "merhaba" # string

"merhaba".to_str  # => "merhaba" # string


# Diğer tip değiştirmek için kullanılan methotlara bakalım:

"merhaba".to_i   # => 0 # integer'a çevirdi
"merhaba".to_f   # => 0.0 # float'a çevirdi
"5".to_i          # => 5
"1.5".to_f        # => 1.5
"merhaba".to_sym  # => :merhaba # symbol
"merhaba".to_r    # => (0/1) # Rasyonel sayı
"0.2".to_r        # => (1/5) # Rasyonel sayı
"merhaba".to_c    # => (0+0i) # Kompleks sayı
"1234".to_c       # => (1234+0i)
"merhaba".to_enum # => #<Enumerator: "merhaba":each> # Enumeratör'e çevirdi


# chars Metotu: Stringin içini tek tek döndürür.

"merhaba".chars # => ["m", "e", "r", "h", "a", "b", "a"]


# codepoints Metotu: Ruby'de str'deki karakterlerin Tamsayı sıralarının bir dizisini döndürmek için kullanılan bir String sınıfı yöntemidir.

# getbyte Metotu: Ascii değerini döndürür.

"merhaba".getbyte(0) # => 109


=begin
    
partition Metotu:
Array'i 2 parçaya ayırmaya yarar. 
Sonuç, blok'ta işlenen ifadeye bağlı olarak döner.
Yani koşula true cevap verenlerle false cevap verenler ayrı parçalar halinde döner.

=end

"merhaba".partition("r") # => ["me", "r", "haba"]
"merhaba".partition("a") # => ["merh", "a", "ba"]
"merhaba".partition("x") # => ["", "", "merhaba"]


# hex Metotu: Onaltılık basamaklar olarak yorumlanan, baştaki karakterlerin tamsayı değerini döndürür.

"0x0f".hex # => 15
"0x0fff".hex # => 4095


# oct Metotu: Sekizlik basamaklar olarak yorumlanan, baştaki karakterlerin tamsayı değerini döndürür.

"123".oct # => 83 # Octal'e çevirdi (8'lik)


























