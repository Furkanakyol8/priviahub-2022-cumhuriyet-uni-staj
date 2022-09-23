# eql? Metotu: Method adı ? ilen bitiyor ise, bir kontrol vardır ve sonucun Boolean yani true ya da false döndüğü anlamı vardır.

"merhaba".eql?("Merhaba") # => false
"merhaba".eql?("merhaba") # => true


=begin
    
casecmp Metotu:
Aynı cins nesneleri karşılaştırmak için kullanılır.
'<=>' spaceship operatörü olarak geçer ve casecmp ile aynı işi yapar.

=end

"vigo" <=> "vigo"    # => 0   (eşit)
"vigo" <=> "vig"     # => 1   (vigo büyük)
"vigo" <=> "vigoo"   # => -1  (vigo küçük)
"vigo" <=> 3         # => nil (alakasız iki şey)


