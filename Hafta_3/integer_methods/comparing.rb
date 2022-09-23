# '<' Metotu: Verilen değerden küçük olup olmadığını döndürür.

notlar = [40, 45, 53, 70, 99, 65]
notlar.delete_if { |notu| notu < 50 } # => [53, 70, 99, 65]


# '<=' Metotu: Verilen değerden küçük veya ona eşit olup olmadığını döndürür.

notlar = [40, 45, 53, 70, 99, 65]
notlar.delete_if { |notu| notu <= 50 } # => [53, 70, 99, 65]


# '<=>' Metotu: Verilen değerden küçük, ona eşit veya daha büyük olduğunu gösteren bir sayı döndürür .

"vesile" <=> "vesile"    # => 0   # eşit
"vesile" <=> "vesil"     # => 1   # vesile büyük
"vesile" <=> "vesilee"   # => -1  # vesile küçük
"vesile" <=> 3         # => nil # alakasız iki şey



    
# '==' ve '===' Metotu: == Generic Equality yani (genel eşitlik) kontrolü, hepimizin bildiği kontrol, === ise Case Equality yani a === b ifadesinde a, b'nin subseti mi? demek olur.

5.class.superclass # => Integer
Integer === 5      # => true  (5, Integer subsetinde)


# '>' Metotu: Verilen değerden büyük olup olmadığını döndürür.

notlar = [40, 45, 53, 70, 99, 65]
notlar.delete_if { |notu| notu > 50 } # => [40, 45]


# '>=' Metotu: Verilen değerden büyük veya ona eşit olup olmadığını döndürür.

notlar = [40, 45, 50, 70, 99, 65]
notlar.delete_if { |notu| notu >= 50 } # => [40, 45, 50]




























