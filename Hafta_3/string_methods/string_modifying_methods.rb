# insert Metotu: Array'de istediğiniz bir noktaya eleman eklemek için kullanılır.

"merhaba".insert(0, "X") # => "Xmerhaba"
"merhaba".insert(3, "A") # => "merAhaba"
"merhaba".insert(-1, ".") # => "merhaba."


# '<<' Metotu: Diziye eleman ekler.

m = ""
m << 65
puts m # A (65 A harfinin 10'luk sayı sistemindeki ASCII değeridir.)


# sub! Metotu: Bir stringde bir karakterin ya da bir altstringin yerine başkasını koymak için kullanılır.

s = "abcdefghi"
s . sub ( 'b', 'B' ) # => " aBcdefghi "
s . sub ( 'bcd', 'BCD' ) # => " aBCDefghi "


# gsub! Metotu: gsub Global anlamındadır.

"merhaba dünya, merhaba uzay".gsub("merhaba", "olaa") # => "olaa dünya, olaa uzay"
"Merhaba Dünya".gsub(/[aeiou]/, "x")                  # => "Mxrhxbx Dünyx"


# succ!, next! Metotları: Bir stringde bir karakterin ya da bir altstringin yerine başkasını koymak için kullanılır.

"a".next     # => "b"
"abcd".next  # => "abce" # d'den sonra e geldi...
"b".succ     # => "c"


=begin
    
replace Metotu:
Array'in içini, diğer Array'le değiştirir. Aslında Array'i başka bir Array'e eşitlemek gibidir. 
Eleman sayısının eşit olup olmaması hiç önemli değildir.

=end

a = ["Vesile", "Eren", "Nesibe", "Yasin"]
a.replace(["Foo", "Bar"]) # => ["Foo", "Bar"]
a                         # => ["Foo", "Bar"]


=begin
    
reverse! Metotu:
Başlarda da bahsettiğimiz gibi method ismi ! ile bitiyorsa bu ilgili nesnede değişiklik yapıyor olduğumuz anlamına gelir.
reverse! ise orjinal Array' i bozar.

=end

a = [1, 2, 3, 4, 5]
a.reverse! # a artık reverse edilmiş halde!
a          # => [5, 4, 3, 2, 1]


# tr! Metotu: String'deki harflerin istenilen harfler ile yer değişiimini sağlar.

"merhaba hello".tr("el", "ip") # => "mirhaba hippo" (e=>i, l => p oldu)
"ArkAdAşlar nasılsınız?".tr("A", "a") # => "arkadaşlar nasılsınız?"


# capitalize Metotu: string içindeki ilk harfi büyük harfe dönüştürür.

m = "merhaba"

m.capitalize # m' nin değeri değişti.
m            # => "Merhaba"


=begin
    
downcase, upcase, swapcase Metotları:
downcase stringi küçük harfe dönüştürür.
upcase metodu stringi büyük harfe dönüştürür.
swapcase metodu büyük harfleri küçük, küçük harfleri büyük yapar.

=end

"MERHABA".downcase # => "merhaba"
"merhaba".upcase   # => "MERHABA"
"Merhaba".swapcase # => "mERHABA"


# unicode_normalize! Metotu: string içindeki ilk harfi büyük harfe dönüştürür.

s = "\u01B5\u0327\u0308"     
s.unicode_normalize(:nfc).size    # => 3, (sadece harfleri buldu.)


# clear Metotu: Stringi siler.
 
x = "Merhaba"
x.clear # => ""


# slice Metotu: Array içinden kesip başka bir Array oluşturmak için kullanılır. başlangiç indeks'indeki eleman dahil olmak üzere, boy ya da aralık kadarını keser.

m = "merhaba"
m.slice(2,5) # => "rhaba"


# squeeze! Metotu: Bitişik yinelenen karakterleri kaldırır.

"metotlaaaarrrrr çoooooook uzuuuuunnn!".squeeze # => "metotlar çok uzun!"


# delete Metotu: Diziler obje olduklarından dolayı, delete kullanılarak silinebilirler.

"Merhaba Dünya".delete("e") # => "Mrhaba Dünya"
"Merhaba Dünya".delete("a", "ba") # => "Merhb Düny"


=begin
    
strip, lstrip, rstrip Metotları:
strip, işlevi dizenin başındaki ve sonundaki beyaz boşlukları kaldırır ve aynı dizeyi beyaz boşluklar olmadan döndürür.
lstrip, işlevi dizenin  en başından itibaren boşlukları kaldırır.
rstrip, işlevi dizenin sonundan itibaren boşlukları kaldırır.

=end

"   merhaba  ".strip  # => "merhaba"
"  merhaba".lstrip    # => "merhaba"
"merhaba  ".rstrip    # => "merhaba"


# chomp Metotu: Chomp metodu ile “\n, \r” gibi karakterleri sileriz.

isim = "taha\n"
puts "#{isim} nerelerdesin?" # => taha
                             #    nerelerdesin?

isim = "taha\n".chomp         
puts "#{isim} nerelerdesin?"  # => taha nerelerdesin? 


# chop Metotu: Chop metodu ise değişkenlerin ya da alınan değerlerin son harfini temizler.

"merhaba vigo".chop # => "merhaba vig"





