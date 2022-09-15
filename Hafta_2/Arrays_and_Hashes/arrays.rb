=begin
    Diziler içine bir çok değer ekleyebildiğimiz bir nesne türüdür.
    Ruby'de dizi içerisine metin değerleri, sayısal değerler, hatta geriye değer döndüren bir metot bile eklenebilir.
    Eklenen her dizi elemanı bir sıra numarası alır ve ilk eleman sıfırdan başlar. (index)
    Üç farklı yöntemle dizi oluşturulabilir
=end

dizi1 = [1, "Furkan", -5]
dizi2 = Array.new(2,"Akyol")
dizi3 = %w{Ne Mutlu Türküm Diyene}

puts dizi1.class, dizi2.class, dizi3.class # => class methoduyla Array tipinde olduklarını görebiliriz.

puts dizi1.inspect  # inspect methoduyla dizilerimizin içeriğini görüntüleriz.
puts dizi2.inspect
puts dizi3.inspect



# dizilere erişim yollarından örnekler üzerinde bahsedelim
dizi = ["a","b","c","d"]
puts dizi[0] # dizinin sıfırıncı indexine, yani ilk elemanına ulaşmamızı sağlar. 'a' çıktısı verecektir.

#peki ya olmayan bir indexi çağırmak istersek?
puts dizi[4].nil?  #rubyde olmayan indexler hata vermez, nil değer döndürür. kontrol etmek için 'nil?' methodunu kullanabiliriz.

# dizi içerisindeki bir aralığa erişmek istiyorsak;
dizi = ["a","b","c","d","e","f","g","h"]
puts dizi[2..4].inspect     #2. ve 4. indexler de dahil olmak üzere tüm aralığa erişmemizi sağlar.

# dizinin elemanlarına tersten erişmek için ise negatif indexler belirtmeliyiz;
puts dizi[-1] # dizinin son elemanına erişiriz.

# dizi içerisinde bildiğimiz bir elemanın kaçıncı indexte tutulduğunu öğrenmek için de bir methodumuz mevcut
puts dizi.index("c")

# dizilerin sonuna eleman eklemek için çeşitli yöntemler vardır. Bu yöntemleri kullanarak dizilerimize eleman ekleyelim
dizi = ["a","b","c","d"]
dizi.push("e")
dizi << "f"
dizi += ["h"]
puts dizi.inspect   # => ["a", "b", "c", "d", "e", "f", "h"]

# Dizinin elemanları arasına yeni bir eleman eklemek istersek 'insert' methodunu kullanabiliriz.
dizi.insert(3, "ç") # virgülden önce kaçıncı indexe eklemek istediğimizi, sonra da neyi eklemek istediğimizi belirtiyoruz.
puts dizi.inspect   # ["a", "b", "c", "ç", "d", "e", "f", "h"]

# Diziye eleman eklemeyi öğrendik şimdi de çıkarmayı öğrenelim
dizi.pop 
