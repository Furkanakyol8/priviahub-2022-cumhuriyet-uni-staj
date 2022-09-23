# [] Metotu: Verilen nesnelerle doldurulmuş yeni bir dizi döndürür.

a = []  
a.class


# new Metotu: Yeni bir dizi döndürür.

b = Array.new 
b.class  


# try_convert Metotu: Belirli bir nesneden oluşturulan yeni bir dizi döndürür.

Hash.try_convert({"user_count"=>5})   # => {"user_count"=>5}
Hash.try_convert("user_count=>5")     # => nil





