#Ruby'de bir ünlem işareti ile sona eren yöntemler değişkeni değiştirir.
=begin
String % argüman -> yeni String

=end
"Merhaba %s" % "Berkay" # => "Merhaba Berkay"
"Sayı: %010d" % 2014  # => "Sayı: 0000002014", örneğinde %010d aslında sayımızı başına 0 koyarak 10 basamaklı hale getirir.
"Kullanıcı Adı: %s, E-Posta: %s" % [ "berkay", "berkay@privia.com" ] # => "Kullanıcı Adı: berkay, E-Posta: berkay@prvia.com"
"Merhaba %{username}!" % { :username => 'berkay' } # => "Merhaba berkay!"

#String * sayı -> yeni String
"Merhaba!" * 3 # => "Merhaba!Merhaba!Merhaba!" Stringimi 3 defa yan yana yazdırır
"Merhaba!" * 0 # => "" Stringimizi 0 kere yaz demek.

#String + String -> yeni String
"Merhaba" + " " + "Dünya" # => "Merhaba Dünya"

#String << nesne -> String
a = "Merhaba"
a << " dünya" # => "Merhaba dünya"
a # => "Merhaba dünya"
a << 33 # => "Merhaba dünya!" nesnemiz bir sayıysa onu ascii tablosuna göre bir karaktere çevirir.

=begin
String <=> başka string → -1, 0, +1 ya da nil
<=> Aynı cins nesneleri karşılaştırmak için kullanılır.
=end
"berkay" <=> "berkay"   # => 0   # eşit
"berkay" <=> "berk"     # => 1   # berkay büyük
"berkay" <=> "berkayy"  # => -1  # berkay küçük
'BERKAY' <=> 'berkay'   # => -1 berkay küçük
'berkay' <=> 'BERKAY'   # => 1 berkay büyük
"berkay" <=> 3          # => nil # alakasız iki şey

=begin
String =~ Nesne -> integer ya da nil
String'in içinden aranan harfin ilk indexsini yazar eger yoksa nil döndürür.
=end
'celik' =~ /c/ # => 0
'celik' =~ /e/ # => 1
'celik' =~ /x/ # => nil

#Stringin içinde bulunan ilk tam sayının index'ini döndürür 
"Saat tam 4'de buluşalım" =~ /\d/ # => 9
# \d sayı yakaladı ve indeksi döndü
"Saat tam 4'de buluşalım"[9] # => "4"

=begin
sub ve gsub metotlarında ilk parametre ilk argüman ile eşleşecek kalıbı alırlar. İkinci argüman ile yerine konulacak metni. 
sub sadece ilk eşlenmeyi değiştirir. gsub, tüm eşlenmeleri değiştirir. Her ikisi de yeni bir String nesnesi döndürür. 
Ayrıca sub! ve gsub! metotları da var. Bunlar yeni nesne döndürmez. Mevcudu değiştirir. 
=end

puts "merhaba dünya, merhaba uzay".sub("merhaba", "olaa") # => "olaa dünya, merhaba uzay"
puts "merhaba dünya, merhaba uzay".gsub("merhaba", "Hello") # => "Hello dünya, Hello uzay"

s = "merhaba dünya, merhaba uzay"
puts s.sub!("merhaba", "olaa") # => "olaa dünya, merhaba uzay"
puts s # => "olaa dünya, merhaba uzay"

t = "merhaba dünya, merhaba uzay"
puts t.gsub!("merhaba", "Hello") # => "olaa dünya, olaa uzay"
puts t # => "olaa dünya, olaa uzay"


l = "merhaba dünya"
puts l.gsub(/[aeiou]/, "x") # => "Mxrhxbx Dünyx"
puts l.gsub(/([aeiou])/, '(\1)') # => "M(e)rh(a)b(a) Düny(a)"
puts"Merhaba dünya, merhaba uzay, merhaba evren".gsub(/((m|M)erhaba)/){|c| c.upcase } # => "MERHABA dünya, MERHABA uzay, MERHABA evren" Block yapılarında da kullanılabilir.
puts"Merhaba Dünya".gsub(/(?<sesli_harf>[aeiou])/, '{\k<sesli_harf>}') # => "M{e}rh{a}b{a} Düny{a}"
puts"Merhaba Dünya".gsub(/[ea]/, 'e' => 1, 'a' => 'X') # => "M1rhXbX DünyX" Hash yapılarında da kullanılabilir

=begin
    String aslında karakterlerden oluşan bir dizi olduğu için aşağıdaki gibi atraksiyonlar yapmak mümkün.

    String[indeks] -> yeni string ya da nil
    String[başlangıç, uzunluk] -> yeni string ya da nil
    String[range] -> yeni string ya da nil
    String[regexp] -> yeni string ya da nil
    String[regexp, yakalan] -> yeni string ya da nil
    String[metinni_bul] -> yeni string ya da nil
=end

m = "Merhaba Dünya"
m[0]         # => "M", 0.karakter
m[0, 2]      # => "Me", 0'dan itibaren 2 karakter
m[0..4]      # => "Merha", range, 0'dan 4 dahil
m[-1,]       # => "a", son karakter
m[-13..-1]   # => "Merhaba Dünya", sondan başa
m[15, 1]     # => nil, olmayan indeks
m[/(?<sesli>[aeiou])/, "sesli"] # => "e", regexp
m["Merhaba"] # => "Merhaba", metni bul
m["berkay"] # => nil, olmayan metin

# capitalize metodu verilen kelimelerin baş harflerini büyük diğer harflerini küçük yapar
m = "string methods"
m.capitalize # => "String Methods"
m # => "string methods"

m.capitalize! # => "String Methods" # s ve m nin değeri artık değişti!
m # => "String Methods"

=begin
center metodu ile belirtilen genişlik verilen dizenin uzunluğundan büyükse, belirtilen genişlikte yeni bir dize, 
verilen dize ortalanmış ve doldurulmuş olarak döndürür, aksi takdirde yalnızca verilen dizeyi döndürür.
=end
"Berkay".center(12) # => "    Berkay    "
"Berkay".center(12, "*") # => "****Berkay****"
"Berkay".center(5) # => "Berkay"

# chars metodu verilen metnin karakterlerini array olarak ayırır.
"merhaba".chars # => ["m", "e", "r", "h", "a", "b", "a"]

# chomp metodu kaçış karakterlerini(/n,/r...) temizler, metnin başından veya sonundan belirtilen karakterleri atar. 
"merhaba\n".chomp # => "merhaba"
"merhaba dünya".chomp(" dünya") # => "merhaba"

# chop metodu kaldırılan son karakterle yeni bir string döndürür. Metin \n veya \r ile biterse her iki karaktele birlikte kaldırılır.
"string\r\n".chop   #=> "string"
"string\n\r".chop   #=> "string\n"
"string\n".chop     #=> "string"
"string".chop       #=> "strin"

# chr metodu metnin ilk karakterini içeren bir dize döndürür.
s = "berkay"
s.chr

# clear metodu metni kaldırır.
s = "berkay"
s.clear

# concat metodu nesnedeki herşeyi self ile birleştirir.
s = "ibrahim"
s.concat("berkay","celik") # "ibrahimberkaycelik"
# sayı girildiğinde onu ascii tablosuna göre bir karaktere çevirir.
s = "ibrahim"
s.concat(32,"berkay",32,"celik") # "ibrahim berkay celik"

# count metodu belirtilen karakter veya karakter grubunun metnin içinde kaç adet oldugunu söyler.
"Merhaba Dünya".count("a") # => 3, 3 adet a
"Merhaba Dünya".count("ab") # => 4, a ve b toplam 4 tane
"Merhaba Dünya".count("e") # => 1, e'den 1 tane

# delete metodu belirtilen karakterlerin silindiği bir kopyasını döndürür
"hello".delete "l","lo"        #=> "heo"
"hello".delete "lo"            #=> "he"
"hello".delete "aeiou", "^e"   #=> "hell"
"hello".delete "ej-m"          #=> "ho"

=begin
delete_prefix ilk index inden itibaren bulunan karakterleri siler, Eğer tanıma uygun kullanılmazsa metini aynı şekilde döndürür.
silinmiş halinin bir kopyasını döndürür.
=end
"hello".delete_prefix("hel") #=> "lo"
"hello".delete_prefix("llo") #=> "hello"

=begin
delete_prefix! ilk index inden itibaren bulunan karakterleri siler, silinmiş halini döndürür. 
Eğer tanıma uygun kullanılmazsa metni nill olarak döndürür.
=end
"hello".delete_prefix!("hel") #=> "lo"
"hello".delete_prefix!("llo") #=> nil

=begin
delete_suffix metodu son index inden itibaren bulunan karakterleri siler, Eğer tanıma uygun kullanılmazsa metini aynı şekilde döndürür.
silinmiş halinin bir kopyasını döndürür.
=end
"hello".delete_suffix("llo") #=> "he"
"hello".delete_suffix("hel") #=> "hello"

=begin
delete_suffix! son index inden itibaren bulunan karakterleri siler, silinmiş halini döndürür. 
Eğer tanıma uygun kullanılmazsa metni nill olarak döndürür.
=end
"hello".delete_suffix!("llo") #=> "he"
"hello".delete_suffix!("hel") #=> nil

# downcase metodu metin içerisinde bulunan büyük harfle yazılmış harfleri küçük harfe çevirilmiş halinin kopyasını döndürür.
"MERHABA".downcase # => "merhaba"

# downcase! metodu ekstra olarak metni değiştirir ve bütün harfler küçükse nill döndürür.
s = 'Hello World!' # => "Hello World!"
s.downcase!        # => "hello world!"
s                  # => "hello world!"
s.downcase!        # => nil

# upcase metodu metin içerisinde bulunan küçük harfle yazılmış harfleri büyük harfe çevirilmiş halinin kopyasını döndürür.
s = 'Hello World!' # => "Hello World!"
s.upcase           # => "HELLO WORLD!"

# upcase! metodu ekstra olarak metni değiştirir ve bütün harfler büyükse nill döndürür.
s = 'Hello World!' # => "Hello World!"
s.upcase!          # => "HELLO WORLD!"
s                  # => "HELLO WORLD!"
s.upcase!          # => nil

# swapcase metodu metin de bulunan küçük harfleri büyük hale, büyük harfleride küçük hale getirir.
s = 'Hello World!' # => "Hello World!"
s.swapcase         # => "hELLO wORLD!"

# swapcase! metodu metin de bulunan küçük harfleri büyük hale, büyük harfleride küçük hale getirir, Herhangi bir değişiklik yapılmamışsa nill döndürür.
s = 'Hello World!' # => "Hello World!"
s.swapcase!        # => "hELLO wORLD!"
s                  # => "Hello World!"
''.swapcase!       # => nil

# length ve size metodu karakter sayısını döndürür.
"\x80\u3042".size # => 2
"hello".length # => 5

# ljust metodu, girilen tam sayı değeri metinin uzunluğundan büyükse metni sola yaslar ve sağına belirtilen index değerine kadar ekleme yapar.
"hello".ljust(4)            #=> "hello"
"hello".ljust(20)           #=> "hello               "
"hello".ljust(20, '1234')   #=> "hello123412341234123"

# rjust metodu, girilen tam sayı değeri metinin uzunluğundan büyükse metni sağa yaslar ve sağına belirtilen index değerine kadar ekleme yapar.
"hello".rjust(4)            #=> "hello"
"hello".rjust(20)           #=> "               hello"
"hello".rjust(20, '1234')   #=> "123412341234123hello"

# strip metodu, başındaki ve sonundaki boşlukları ve kaçış karakterlerini(\t,\r,\n....) kaldırır ve kopyasını döndürür.
"    hello    ".strip   #=> "hello"
"\tgoodbye\r\n".strip   #=> "goodbye"
"\x00\t\n\v\f\r ".strip #=> ""

# strip! metodu, ekstra olarak herhangi bir değişiklik yapılamazsa nill değer döndürür.
"  hello  ".strip!  #=> "hello"
"hello".strip!      #=> nil

# lstrip metodu, başındaki boşlukları kaldırır ve kopyasını döndürür.
"  hello  ".lstrip   #=> "hello  "
"hello".lstrip       #=> "hello"

# lstrip! metodu, başındaki boşlukları kaldırır ve metni değiştirerek döndürür.Eğer herhangi birşey değiştiremezsek nill döndürür. 
"  hello  ".lstrip!  #=> "hello  "
"hello  ".lstrip!    #=> nil
"hello".lstrip!      #=> nil

# rstrip metodu, sonundak, boşlukları kaldırır ve kopyasını döndürür. 
"  hello  ".rstrip   #=> "  hello"
"hello".rstrip       #=> "hello

# rstrip! metodu, sonundaki boşlukları kaldırır ve metni değiştirerek döndürür.Eğer herhangi birşey değiştiremezsek nill döndürür. 
"  hello  ".rstrip!  #=> "  hello"
"  hello".rstrip!    #=> nil
"hello".rstrip!      #=> nil

# index metodu metindeki belirtilen ifadenin indeksini söyler. Eğer yoksa nill değer döndürür.
'hello'.index('ll') # => 0 
'hello'.index('lll') # => nil
'hello'.index(/h/) # => 0

# succ metodu, en sağdaki karakteri arttırır
'THX1138'.succ # => "THX1139"
'<<koala>>'.succ # => "<<koalb>>"
'***'.succ # => '**+'
# Eğer aynı tipte ise bütün olarak bakım bir üst değerine geçer
'00'.succ # => "01"
'09'.succ # => "10"
'aa'.succ # => "ab"
'AZ'.succ # => "BA"
'ZZ'.succ # => "AAA"
s = 'zz99zz99'
s.succ # => "aaa00aa00"
s = '99zz99zz'
s.succ # => "100aa00aa"

# partition metodu, metni başı, verilen ifade , son olarak ayırır
"merhaba".partition("r") # => ["me", "r", "haba"]
"merhaba".partition("a") # => ["merh", "a", "ba"]
"merhaba".partition("x") # => ["", "", "merhaba"]

# reverse metodu, verilen metni ters çevirir ve kopyasını döndürür, reverse! olan hali de ekstra olarak değeri direk olarak değiştirir.
"merhaba dünya".reverse # => "aynüd abahrem"

=begin
squeeze metodu, verilen metotda arka arkaya birden fazla kez karakter tekrarlanıyorsa tek karaktere indirger.
squeeze! olan hali de ekstra olarak herhangi bir işlem yapamazsa nill döndürür.
=end
"hey seeeeeeeeeeeeeeen! aloooooooo".squeeze # => "hey sen! alo"

# getbyte değeri belirtilen indexdeki karakterin ascii değerini belirtir.
"merhaba".getbyte(0) # => 109 # m'in ascii değeri

# insert metodu belirtilen indekse verilen ifadeyi ekler.
'berk'.insert(4, 'ay') # => "berkay"
'berk'.insert(-1,'ay') # => "berkay"

# prepend metodu
"dünya".prepend("Merhaba ") # => "Merhaba dünya"  öne eklendi

=begin
tr metodun da birinci kısma girilen metindeki değişmesini istediğimiz karakterleri gireriz, 
ikinci kısımda ise birinci kısımda bulunan karakterlerin yerine geçecek karakterleri gireriz. 
=end
"merhaba hello".tr("el", "ip") # => "mirhaba hippo" # e=>i, l => p oldu
"ArkAdAşlar nasılsınız?".tr("A", "a") # => "arkadaşlar nasılsınız?

# a'dan e'y kadar olan karakterleri X ile değiştir. 
"merhaba dünya".tr("a-e", "X") # => "mXrhXXX XünyX"

"5".to_i          # => 5
"merhaba".to_i   # => 0 # integer'a çevirdi
"1.5".to_f        # => 1.5
"merhaba".to_f   # => 0.0 # float'a çevirdi
"merhaba".to_s    # => "merhaba" # string
"merhaba".to_str  # => "merhaba" # string
"merhaba".to_sym  # => :merhaba # symbol
"merhaba".to_r    # => (0/1) # Rasyonel sayı
"0.2".to_r        # => (1/5) # Rasyonel sayı
"merhaba".to_c    # => (0+0i) # Kompleks sayı
"1234".to_c       # => (1234+0i)
"merhaba".to_enum # => #<Enumerator: "merhaba":each> # Enumeratör'e çevirdi

# start_with? metodun da parantez içine yazılan ifade tekstin başıyla aynı ise true değilse false döner.
"merhaba".start_with?("m") # => true
"merhaba".start_with?("mer") # => true
"merhaba".start_with?("f") # => false
"merhaba".start_with?("selam", "merha") #=> true

# end_with metodun da parantez içine yazılan ifade tekstin sonu ile aynı ise true değilse false döner.
"merhaba".end_with?("a") # => true
"merhaba".end_with?("haba") # => true
"merhaba".end_with?("zoo") # => false
"merhaba".start_with?("selam", "hoşçakal") #=> false

# eql? metodu iki ifadeyi karşılaştırır aynı ise tru değilse false döner.
"merhaba".eql?("Merhaba") # => false
"merhaba".eql?("merhaba") # => true

# include? metodu içerisinde yazılan ifade tekstte geçiyorsa true geçmiyorsa false döndürür.
"merhaba dünya".include?("dünya") # => true

# empty? metodun da tekstin uzunluğu sıfır ise true, değilse false döner
"merhaba".empty? # => false
"".empty? # => true

# each_byte metodu, tüm karakterleri sırasıyla gezer ve her karakterin ascii karşılığını yazar.  
"merhaba".each_byte {|k| print k, ' '}

# each_char metodu, tüm karakterleri sırasıyla gezer ve bir blok içerisinde belirtilen kodu işletir.
m = "merhaba"
m.each_char{|k| print k," "}

# ascii_only? metodu, metinde yalnızca ascii karakterleri varsa true döndürür.
"abc".force_encoding("UTF-8").ascii_only?          #=> true
"abc\u{6666}".force_encoding("UTF-8").ascii_only?  #=> false

# metindeki byte sayısını döndürür.
"\x80\u3042".bytesize # => 4
"hello".bytesize # => 5

# byteslice(index,length) ve byteslice(range) iki tip kullanım vardır.
s = '0123456789' # => "0123456789"
s.byteslice(2)   # => "2"
s.byteslice(200) # => nil
s.byteslice(-4)  # => "6"
s.byteslice(4..6)   # => "456"
s.byteslice(4, 3)  # => "456"
s.byteslice(4, 30) # => "456789"

# each_codepoint Stringdeki her karakteri verir.
"hello\u0639".each_codepoint {|c| print c, ' ' } # => 104 101 108 108 111 1593

# oct uygulanan octal(8'li) sayıyı decimal(10'lu) yapar.
"123".oct       #=> 83
"-377".oct      #=> -255
"bad".oct       #=> 0
"0377bad".oct   #=> 255

# Uygulanan karakterin ascii kodunu verir.
"a".ord         #=> 97

# Stringin içini başka bir string ille değiştirir.
s = 'ibrahim'        # => "ibrahim"
s.replace('berkay') # => "berkay"

# verilen karakterin bulunduğu son indexi yazdırır eğer yoksa nill döndürür.
'foo'.rindex('f') # => 0
'foo'.rindex('o') # => 2
'foo'.rindex('oo') # => 1
'foo'.rindex('ooo') # => nil

# scan metodu, metni belirtilen desene göre parçalara ayırır.
a = "cruel world"
a.scan(/\w+/)        #=> ["cruel", "world"]
a.scan(/.../)        #=> ["cru", "el ", "wor"]
a.scan(/(...)/)      #=> [["cru"], ["el "], ["wor"]]
a.scan(/(..)(..)/)   #=> [["cr", "ue"], ["l ", "wo"]]

# belirlenen bir koşula göre metni böler.
" now's  the time ".split       #=> ["now's", "the", "time"]
" now's  the time ".split(' ')  #=> ["now's", "the", "time"]
"hello".split(//)               #=> ["h", "e", "l", "l", "o"]
"hello".split(//, 3)            #=> ["h", "e", "llo"]
"mellow yellow".split("ello")   #=> ["m", "w y", "w"]
"1,2,,3,4,,".split(',')         #=> ["1", "2", "", "3", "4"]

# squeeze metodu, verilen argümana göre tekrar eden karakterleri tek karaktere döndürür.Eğer argüman verilmezse bütün karakterler için uygular.
"yellow moon".squeeze                  #=> "yelow mon"
"  now   is  the".squeeze(" ")         #=> " now is the"
"putters shoot balls".squeeze("m-z")   #=> "puters shot balls"

# upto metodu, ilk verilen değerden ikinci verilen değere(dahil) kadar bütün değerleri döndürür.
'a8'.upto('b6') {|s| print s, ' ' } # => a8 a9 b0 b1 b2 b3 b4 b5 b6
