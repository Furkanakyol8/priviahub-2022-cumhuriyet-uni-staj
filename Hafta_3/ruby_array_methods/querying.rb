# length, size Metotları: Öğe sayısını döndürür.

h = {:user => "vigo", :password => "secret"}
h.length # => 2
h.size   # => 2


# include? Metotu: Herhangi bir öğenin ==belirli bir nesne olup olmadığını döndürür.

[1, 2, 3, 4].include?(3)  # => true


# empty? Metotu: Öğe olup olmadığını döndürür. Array acaba boşmu? İçinde hiç eleman var mı?

[3, 5, 7, 9, 11].empty? # => false
[].empty?           # => true


# all? Metotu: Array içindeki elemanları belli bir koşula göre kontrol etmek için kullanılır. Sonuç Boolean yani true ya da false döner. Tüm elemanların kontrolü koşula uyuyorsa true uymuyorsa false döner.

kisiler = ["Kemal", "Kasım", "Kardelen", "Kürşat"]
kisiler.all? {|kisi_ismi| kisi_ismi.length >= 2 } # => true


# any? Metotu: Herhangi bir öğenin belirli bir ölçütü karşılayıp karşılamadığını döndürür.

ayvanlar = ["Kedi", "Köpek", "At", "Yılan", "Balık"]
hayvanlar.any?{ |hayvan_ismi| hayvan_ismi.start_with?("A") } # => true


# none? Metotu: ==Belirli bir nesnede öğe olup olmadığını döndürür.

hayvanlar = ["Kedi", "Köpek", "At", "Yılan", "Balık", "Kaplumbağa"] # Hiçbir ismin uzunluğu 2 karakter olmamalı. Ama at 2 uzunlukta. Bu yüzden false döner.
hayvanlar.none?{ |hayvan_ismi| hayvan_ismi.length == 2 } # => false


# one? Metotu: sadece bir eleman koşula uymalıdır. Yani bir tanesi truedönmelidir. Eğer birden fazla eleman koşula true dönerse sonuç false olur.

hayvanlar = ["Kedi", "Köpek", "At", "Yılan", "Balık", "Kaplumbağa"] # Bir ismin uzunluğu 6 karakterden büyük olmalı.
hayvanlar.one?{ |hayvan_ismi| hayvan_ismi.length > 6 } # => true


# count Metotu: Array’in boyu / içinde kaç eleman olduğu ile ilgili bilgiyi almak için kullanılır.

[10, 9, 8, 7].count  # => 4


# find_index,index Metotları: Elemanın index’ini buluruz.

["v", "e", "s", "i", "l"].index("e")                 # => 1
["Vesile", "Ebrar", "Nesibe", "Alya"].find_index("Nesibe") # => 2


# rindex Metotu: sağdan hizalı index’e göre elemana ulaşıyoruz.

a = [ "a", "b", "b", "b", "c" ]
a.rindex("b") # => 3 çünkü 3 tane b var, en sağdaki son b’yi verdi.


# hash Metotu: Tamsayı karma kodunu döndürür.

[1, 2, 3].hash   # => 3384159031637530117 
# Ruby' de her nesnenin hash değeri vardır.
















