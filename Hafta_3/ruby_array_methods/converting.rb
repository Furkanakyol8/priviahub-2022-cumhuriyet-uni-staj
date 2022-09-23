# map, collect Metotları: Blok içinde gelen kodu her elemana uygular, yeni Array döner.

a = [1, 2, 3, 4, 5]
a.collect { |i| i * 2 }       # => [2, 4, 6, 8, 10]
a.collect { |i| "sayı #{i}" } # => ["sayı 1", "sayı 2", "sayı 3", "sayı 4", "sayı 5"]


# flatten Metotu: Array içinde Array elemanları varsa, tek harekette bunları düz tek bir Array haline getirebiliriz.

[1, 2, ["a", "b", :c], [66, [5.5, 3.1]]].flatten # => [1, 2, "a", "b", :c, 66, 5.5, 3.1]


# inspect, to_ary, to_s, to_a, to_h Metotları: Görevleri eğer alt sınıftan çağrılmışsa, yani Array’den türeyen başka bir Class’da kullanıldığında direk Array’e dönüştürür.

["a", 1, "b", 2].to_a       # => ["a", 1, "b", 2]
["a", 1, "b", 2].to_s       # => "[\"a\", 1, \"b\", 2]"
["a", 1, "b", 2].inspect    # => "[\"a\", 1, \"b\", 2]"
["a", 1, "b", 2].to_ary     # => ["a", 1, "b", 2]
[["a", 1], ["b", 2]].to_h   # => {"a"=>1, "b"=>2}


# join Metotu: Array elemanlarını birleştirip String’e çevirmeye yarar. Eğer parametre verirsek aradaki birleştiriciyi de belirlemiş oluruz.

["Commodore 64", "Amiga", "Sinclair", "Amstrad"].join        # => "Commodore 64AmigaSinclairAmstrad"
["Commodore 64", "Amiga", "Sinclair", "Amstrad"].join(" , ") # => "Commodore 64 , Amiga , Sinclair , Amstrad"


# transpose Metotu: Array içindeki Array’leri satır gibi düşünüp bunları sütuna çeviriyor gibi algılayabilirsiniz.

a = [[1, 2], [3, 4], [5, 6]]
a.transpose   # => [[1, 3, 5], [2, 4, 6]]

# [
#   [1, 2],
#   [3, 4],
#   [5, 6]
# ]
# -> [1, 3, 5], [2, 4, 5]


# zip Metotu:

a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]

[1, 2, 3].zip(a, b)   # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
[1, 2].zip(a, b)      # => [[1, 4, 7], [2, 5, 8]]
a.zip([1, 2], [8])    # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]


