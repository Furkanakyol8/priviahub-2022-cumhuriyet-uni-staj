# flatten Metotu: Array içinde Array elemanları varsa, tek harekette bunları düz tek bir Array haline getirebiliriz.

[1, 2, ["a", "b", :c], [66, [5.5, 3.1]]].flatten # => [1, 2, "a", "b", :c, 66, 5.5, 3.1]


# invert Metotu: Hash'in key'leri ile value'lerini yer değiştirmek için kullanılır.

h = { "a" => 100, "b" => 200 } # => {"a"=>100, "b"=>200}
h.keys                         # => ["a", "b"]
h.invert                       # => {100=>"a", 200=>"b"}