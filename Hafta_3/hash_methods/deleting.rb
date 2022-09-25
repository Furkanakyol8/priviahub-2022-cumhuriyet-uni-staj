# clear Metotu: Array'i temizlemek için kullanılır.

x = "Merhaba"
x.clear # => ""


# compact! sıfır olmayan öğeler içeren bir dizi döndürür. Bu, nil öğeleri içeren bir dizide bu yöntemi çağırdığımızda, onları kaldırdığı anlamına gelir. Yalnızca dizinin sıfır olmayan diğer öğelerini döndürür.

a = [18, 22, 33, nil, 5, 6]
a.compact!
puts # => [18, 22, 33, 5, 6]


=begin
    
pop, shift, delete, delete_at, delete_if Metotları:
Son elemanı çıkartmank için pop, ilk elemanı çıkartmak için shift kullanılır.
Herhangi bir elemanı çıkartmak için delete, belirli bir index'deki elemanı çıkartmak için delete_at kullanılır.

=end

a = ["Uğur", "Ömer", "Yeşim", "Ezel", "Eren"]
a.pop              # => "Eren"
a                  # => ["Uğur", "Ömer", "Yeşim", "Ezel"]
a.shift            # => "Uğur"
a                  # => ["Ömer", "Yeşim", "Ezel"]
a.delete("Ömer")   # => "Ömer"
a                  # => ["Yeşim", "Ezel"]
a.delete_at(1)     # => "Ezel"
a                  # => ["Yeşim"]

# not 50'den küçükse sil diyoruz.
notlar = [40, 45, 53, 70, 99, 65]
notlar.delete_if { |notu| notu < 50 } # => [53, 70, 99, 65]


# select Metotu: Blok içinden gelen ifadenin true / false olmasına göre filtre yapar ve yeni Array döner.

[1, 2, 3, 10, 15, 20].select { |n| n % 2 == 0 } # => [2, 10, 20] # 2'ye tam bölünenler
[1, 2, "3", "ali", 15, 20].select { |n| n.is_a?(Fixnum) } # => [1, 2, 15, 20] # sadece sayılar


# keep_if Metotu: Blok içindeki ifade'den sadece false dönenleri atar ve Array'in orjinal değerini bozar, değiştirir.

a = [1, 2, 3, 10, 15, 20]
a.keep_if { |n| n % 2 == 0 } # => [2, 10, 20] # 2'ye bölünemeyenler false geldiği için düştüler.
a # => [2, 10, 20] # a artık budur.


# reject! Metotu: belirli bir koşul için dönen bazı öğeleri silmek için kullanılır . Kümenin her bir elemanı için koşulu belirleyen bir blok gerektirir.

h = {foo: 0, bar: 1, baz: 2}
h.reject! {|key, value| value < 2 } # => {:baz=>2}


