# '[]' Metotu: Bir veya daha fazla öğe döndürür.

a = [ 1, 3, 2 ]
a [ -1 ] # => 2 
a [ -2 ] # => 3


# fetch Metotu: Öğeyi belirli bir ofsette döndürür.

a = [1, 2, 3, 4, 5]
a.fetch(0)                 # => 1


# first ve last Metotları: Adı üzerinde Array'in ilk ve son elemanları için kullanırız.

a = [1, 2, 3, 4, 5]
a.first # => 1
a.last # => 5


# max ve min Metotları: Array elemanlarından en küçük/büyük değeri alırız.

a = [18, 21, 54, 87]
a.min # => 18
a.max # => 87


# minmax Metotu:  Array’in minimum ve maximum’unu döner.

m = ["elma", "armut", "şeftali", "su"]
m.minmax # => ["su", "şeftali"]


=begin
    
assoc ve rassoc Metotları: 
assoc elemanları Array olan bir Array içinde, ilk değere göre yakalama yapmaya yarar.
rassoc ise ikinci elemanına bakar.
    
=end

a = ["renkler", "kırmızı", "sarı", "mavi"]
b = ["harfler", "a", "b", "c"]
c = "foo"

t  = [a, b, c]
t                 # => [["renkler", "kırmızı", "sarı", "mavi"], ["harfler", "a", "b", "c"], "foo"]
t.assoc("renkler") # => ["renkler", "kırmızı", "sarı", "mavi"]
t.assoc("foo")     # => nil

t.rassoc("kırmızı")   # => ["renkler", "kırmızı", "sarı", "mavi"] # Burada renkler yerine kırmızı kullandık. 
 

# at ve values_at Metotları: values_at method’u ile, ilgili index ya da index’lerdeki elemanları alabiliriz, keza at de benzer işe yarar.

m = ["elma", "armut", "şeftali", "kayısı"]
m.values_at(2, 3) # => ["şeftali", "kayısı"]

["elma", "armut", "şeftali", "kayısı"].at(-1) # => "kayısı"


# drop ve drop_while Metotları: drop_while, delete_if gibi çalışır. Yani koşullu silem işlemi yapar.

a = [1, 2, 3, 4]
a.drop(2) # => [3, 4] 

notlar = [40, 45, 53, 70, 99, 65]
notlar.drop_while {|notu| notu < 50 }   # => [53, 70, 99, 65]


# take_while Metotu: Aynı drop_while gibi çalışır ama tersini yapar.

notlar = [40, 45, 53, 70, 99, 65]
notlar.take_while { |notu| notu < 50 } # => [40, 45]


# take Metotu: İlk ... elemanı al demektir.

a = [1, 2, 3, 4]           # İlk N elemanı al
a.take(2)                  # => [1, 2]


# slice Metotu: Array içinden kesip başka bir Array oluşturmak için kullanılır. Başlangıç indeks’indeki eleman dahil olmak üzere, boy ya da aralık kadarını keser.

[1, 2, 3, 4].slice(1, 2) # => [2, 3] # 0.dan itibaren 2 tane


# sort Metotu: Array içindeki elemanları <=> mantığıyla sıralar.

m = ["v", "e", "s", "i", "l"]
m.sort # => ["e", "i", "l", "s", "v"]


# reverse Metotu: Array'i bozar.

a = [1, 2, 3, 4, 5]
a.reverse! # => [5, 4, 3, 2, 1]


# compact ve uniq Metotları: il elemanları uçurmak için compact, duplike elemanları tekil hale getirmek için uniq kullanılır.

["a", 1, nil, 2, nil, "b", 1, "a"].compact         # => ["a", 1, 2, "b", 1, "a"]
["a", 1, nil, 2, nil, "b", 1, "a"].uniq            # => ["a", 1, nil, 2, "b"]
["a", 1, nil, 2, nil, "b", 1, "a"].compact.uniq    # => ["a", 1, 2, "b"]


# select Metotu: Blok içinden gelen ifadenin true / false olmasına göre filtre yapar ve yeni Array döner.

[1, 2, 3, 10, 15, 20].select { |n| n % 2 == 0 } # => [2, 10, 20] # 2’ye tam bölünenler
[1, 2, "3", "ali", 15, 20].select { |n| n.is_a?(Fixnum) } # => [1, 2, 15, 20], sadece sayılar


# rotate Metotu: Array elemanları kendi içinde kaydırır.

a = [1, 2, 3, 4, 5]
a.rotate    # => [2, 3, 4, 5, 1] # 1 kaydırdı
a.rotate(2) # => [3, 4, 5, 1, 2] # 2 kaydırdı, ilk 2 elemanı sona koyar.


# bsearch Metotu: Binary arama yapar.

[1, 2, 3, 4, 5].bsearch{ |n| n > 2 }  # => 3 # 2’den büyük 3, 4 ve 5 olmasına rağmen tek sonuç verir.
[1, 2, 3, 4, 5].bsearch{ |n| n >= 4 } # => 4


# sample Metotu: Array’den random olarak eleman almaya yarar. Eğer parametre geçilirse geçilen adet kadar random eleman döner.

a = [1, 2, 3, 4, 5]
a.sample    # => 3
a.sample(3) # => [5, 1, 3]


# shuffle Metotu: Array’in içindeki elemanların index’lerini karıştırır.

a = [1, 2, 3, 4, 5]
a.shuffle # => [5, 4, 1, 3, 2]
a.shuffle # => [1, 2, 3, 5, 4]








