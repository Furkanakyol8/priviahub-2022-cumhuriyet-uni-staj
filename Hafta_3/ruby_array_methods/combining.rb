# '&' Metotu: İki dizide de kullanın ortak elemanları alır yeni Array döner.

a = [1, 2, 3, 4]
b = [3, 1, 10, 22]
a & b # => [1, 3]


# intersection Metotu: Verilen her dizide ve içinde bulunan öğeleri içeren bir dizi döndürür. 

[0, 1, 2, 3].intersection([0, 1, 2], [0, 1, 3]) # => [0, 1]
[0, 0, 1, 1, 2, 3].intersection([0, 1, 2], [0, 1, 3]) # => [0, 1]


# '+' Metotu: İki Array’i toplar ve yeni Array döner.

a = [1, 2, 3, 4]
b = [3, 1, 10, 22]
a + b  # => [1, 2, 3, 4, 3, 1, 10, 22]

# '-' Metotu: Array’ler arasındaki farkı Array olarak bulmaya yara.

a = [1, 2, 3, 4]
b = [2, 1, 3, 22]
b - a  # => [22]


# '|' Metotu: İki Array’i unique (tekil) elemanlar olarak birleştirir. Aynı eleman varsa bunlardan birisini alır.

[ 0 , 1 ] | [ 2 , 3 ] # => [0, 1, 2, 3] 
[ 0 , 1 , 1 ] | [ 2 , 2 , 3 ] # => [0, 1, 2, 3] 


# union Metotu: Verilen dizilerin tüm öğelerini ve tüm öğelerini içeren bir dizi döndürür, kopyalar kaldırılır.

[0, 1, 2, 3].union([4, 5], [6, 7]) # => [0, 1, 2, 3, 4, 5, 6, 7]
[0, 1, 1].union([2, 1], [3, 1]) # => [0, 1, 2, 3]
[0, 1, 2, 3].union([3, 2], [1, 0]) # => [0, 1, 2, 3]


# difference Metotu: Verilen dizilerin hiçbirinde bulunmayan tüm öğelerini içeren bir dizi döndürür.

[0, 1, 1, 2, 1, 1, 3, 1, 1].difference([1]) # => [0, 2, 3]
[0, 1, 2, 3].difference([3, 0], [1, 3]) # => [2]
[0, 1, 2].difference([4]) # => [0, 1, 2]


# product Metotu: Array ve argüman olarak geçilecek diğer Array/lerin elemanlarıyla oluşabilecek tüm alternatifleri üretmenizi sağlar.

[1, 2, 3].product            # => [[1], [2], [3]]
[1, 2, 3].product([4, 5])    # => [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]
