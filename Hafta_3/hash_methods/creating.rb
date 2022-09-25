# '[]' Metotu: Verilen nesnelerle doldurulmuş yeni bir karma döndürür.

Hash ["kullanıcı sayısı", 22] # => {"kullanıcı sayısı"=>22}


# Hash.new Metotu: Yeni bir boş karma döndürür.

h = Hash.new
h # => {}
h["kullanıcı sayısı"] = 22
h # => {"kullanıcı sayısı"=>22}


# try_convert Metotu: Hash'e dönüşebilme ihtimali olan nesneyi Hash haline çevirir.

Hash.try_convert({"kullanıcı sayısı"=>22})   # => {"kullanıcı sayısı"=>5}
Hash.try_convert("kullanıcı sayısı=>22")     # => nil