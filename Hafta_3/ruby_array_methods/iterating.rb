# each ve each_index Metotları: each, her elemanı belirli bir bloğa geçirir.

a = ["Uğur", "Yeşim", "Ezel", "Ömer"]
a.each # => #<Enumerator: ["Uğur", "Yeşim", "Ezel", "Ömer"]:each>
a.each { |isim| puts "İsim: #{isim}" }

# İsim: Uğur
# İsim: Yeşim
# İsim: Ezel
# İsim: Ömer

a = ["Uğur", "Yeşim", "Ezel", "Ömer"]

a.each_index # => #<Enumerator: ["Uğur", "Yeşim", "Ezel", "Ömer"]:each_index>
a.each_index.to_a # => [0, 1, 2, 3]
a.each_index { |i| puts "Index: #{i}, Değeri: #{a[i]}" }

# Index: 0, Değeri: Uğur
# Index: 1, Değeri: Yeşim
# Index: 2, Değeri: Ezel
# Index: 3, Değeri: Ömer


# reverse_each Metotu: reverse_each aslında Array’i otomatik olarak ters çevirir yani reverse eder ve içinde dolaşmanızı sağlar.

a = [:foo, 'bar', 2]
a.reverse_each {|element|  puts "#{element.class} #{element}" } 
# Integer 2
#String bar
#Symbol foo


#cycle Metotu: Pas edilen blok'u n defa tekrar eder.

a = [1, 2, 3]

a.cycle(2).to_a # => [1, 2, 3, 1, 2, 3] # 2 defa
a.cycle(4).to_a # => [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3] # 3defa
a.cycle(2) { |o| puts "Sayı #{o}" }
# Sayı 1
# Sayı 2
# Sayı 3
# Sayı 1
# Sayı 2
# Sayı 3


# combination Metotu: Matematikteki kombinasyon işlemidir.

a = [1, 2, 3]
a.combination(1).to_a # => [[1], [2], [3]]
a.combination(2).to_a # => [[1, 2], [1, 3], [2, 3]]

# permutation Metotu: Aynı kombinasyon gibi, matematikteki permütasyon işlemidir.

[1, 2, 3].permutation.to_a # => [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]


# repeated_combination, repeated_permutation Metotları: combination olası tekil sonucu, repeated_combination pas edilen sayıya göre tekrar da edebilen sonucu döner. Aynısı repeated_permutation için de geçerlidir.

[1, 2, 3].combination(1).to_a # => [[1], [2], [3]]
[1, 2, 3].repeated_combination(1).to_a # => [[1], [2], [3]]

[1, 2, 3].permutation(1).to_a # => [[1], [2], [3]]
[1, 2, 3].repeated_permutation(1).to_a # => [[1], [2], [3]]