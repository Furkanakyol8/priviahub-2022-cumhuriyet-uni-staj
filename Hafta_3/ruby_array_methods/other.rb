# '*' Metotu: 

a = ["a", "b", "c"]
a * 5 # => ["a", "b", "c", "a", "b", "c", "a", "b", "c", "a", "b", "c", "a", "b", "c"]


# pack Metotu: Array’in içeriğini verilen direktife göre Binary String haline getirir. Uzunca bir direktif listesi var.

a = [ "a", "b", "c" ]
n = [ 65, 66, 67 ]
a.pack("A3A3A3")   #=> "a  b  c  "
a.pack("a3a3a3")   #=> "a\000\000b\000\000c\000\000"
n.pack("ccc")      #=> "ABC"


# sum Metotu: Belirli bir bloğa göre öğelerin toplamını döndürür.

a = [0, 1, 2, 3]
a.sum # => 6
a.sum(100) # => 106

