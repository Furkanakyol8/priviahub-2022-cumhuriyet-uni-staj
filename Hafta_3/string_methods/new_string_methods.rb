=begin
    
String sınıfı kullanılarak yeni bir string yaratmak için new operatörü
kullanılabilir.

    
=end

str1 = String.new # Bu yöntem çift tırnak içinde ("") ile gösterilen boş bir string yaratır
str2 = String.new("Bu bir stringdir.") # Yaratılacak metin, yukarıdaki new operatörünün argümanı gibi yazılabilir.
str3 = String ("Bu da bir string \' dir.")
str4 = "String nesnesini kolay oluşturma" # String nesnesi yaratmanın en kolay yolu, istenen metni (nesne) bir değişkene atamaktır.


=begin
 
Bir diğer yöntem ise 'try_convert' dir.
Hash'e dönüşebilme ihtimali olan nesneyi Hash haline çevirir.
    
=end

Hash.try_convert({"user_count"=>5})   # => {"user_count"=>5}
Hash.try_convert("user_count=>5")     # => nil


