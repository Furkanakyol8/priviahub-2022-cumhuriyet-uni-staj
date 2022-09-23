=begin
    
pop, shift, delete ve delete_at, delete_if Metotları:
Son elemanı çıkartmak için pop ilk elemanı çıkartmak için shift kullanılır.
Herhangi bir elemanı çıkartmak için delete, belirli bir index’deki elemanı çıkartmak için delete_at kullanılır.

=end

a = [1, 2, 3, 4]
a.pop
a # [1, 2, 3]

a.shift
a # [2, 3, 4]

a.delete("3") 
a # [1, 2, 4]

a.delete_at(0)
a # [2, 3, 4]

notlar = [40, 45, 53, 70, 99, 65]
notlar.delete_if { |notu| notu < 50 } # => [53, 70, 99, 65] # 50'den küçükse siliyor.


# keep_if Metotu: Blok içindeki ifade’den sadece false dönenleri atar ve Array’in orjinal değerini bozar, değiştirir.

a = [1, 2, 3, 10, 15, 20]
a.keep_if { |n| n % 2 == 0 } # => [2, 10, 20] # 2’ye bölünemeyenler false geldiği için düştüler.
a # => [2, 10, 20] # a artık bu!

# reject! Metotu: Belirli bir blok tarafından belirtilen öğeleri kaldırır.
a = [:foo, 'bar', 2, 'bat']
a.reject! {|element| element.to_s.start_with?('b') } # => [:foo, 2]


# slice! Metotu: Bir dizi öğeyi kaldırır ve döndürür.

a = [:foo, 'bar', 2]
a.slice!(1) # => "bar"
a # => [:foo, 2]


# uniq! Metotu: Yinelenenleri kaldırır.

a = [0, 0, 1, 1, 2, 2]
a.uniq! # => [0, 1, 2]



