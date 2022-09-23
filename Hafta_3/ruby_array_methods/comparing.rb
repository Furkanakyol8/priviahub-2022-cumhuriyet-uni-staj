# '<=>' Metotu: Array’ler arasında karşılaştırma yapmayı sağlar.

[1, 2, 3, 4] <=> [1, 2, 3, 4] # => 0 # Eşit
[1, 2, 3, 4] <=> [1, 2, 3]    # => 1 # İlk değer büyük
[1, 2, 3] <=> [1, 2, 3, 4]    # => -1 # İlk değer küçük


# '==' Metotu: İki Array nitelik ve nicelik olarak birbirine eşit mi? Sorusunu sorar.

[1, 2, 3, 4] == [1, 2, 3, 4]   # => true
[1, 2, 3, 4] == ["1", 2, 3, 4] # => false
[1, 2, 3, 4] == [1, 2, 3]      # => false


# 'eql?' Metotu: Eşitlik kontrolü içindir. Eğer karşılığı aynı cinsse ve birebir aynı elemanlara sahipse true döner.

a = ["Vesile", "Ebrar", "Nesibe", "Alya"]

a.eql?(["Eren", "Ebrar", "Nesibe", "Alya"]) # => false
a.eql?(["Vesile", "Ebrar", "Nesibe", "Alya"]) # => true


