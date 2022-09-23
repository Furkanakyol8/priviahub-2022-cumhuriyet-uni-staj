=begin
hash ={'anahtar1' => 'deger', 'anahtar2' => 'deger'}
Sözlükler iki parametreden oluşur, bunlar anahtar ve deger'dir. Anahtarlar'lar herhangi bir türden olabilir.
Dizilerin aksine bir index numarasına sahip değillerdir.İndex'leri anahtar değeri olaraktan kendimiz belirleriz ve benzersiz olmalıdır.
Hasler oluşturulurken süslü parantez kullanılır, her bir elemanının arasına virgül konulucak şekilde oluşturulur. 
=end

#Anahtar kısmı 3 farklı şekilde oluşturulabilir.
kisi = {'adi' => 'Berkay', 'soyadi' => 'Çelik', 'yas' => '23'}
kisi = {:adi => 'Berkay', :soyadi => 'Çelik', :yas => '23'}
kisi = {adi: 'Berkay', soyadi: 'Çelik', yas: '23'}

kisi = Hash.new() # new metodu ile de yeni bir hash oluşturulabilir
puts kisi.inspect #parametre girmediğimiz için boş bir hash döndürür.


#Haslerde erişime bakalım şimdi de

musteri = {ad:"Berkay", soyad:  "Çelik", eposta: "berkay@gmail.com", yas:23}
  
puts "Müşteri: #{musteri[:ad]} #{musteri[:soyad]}" #hash de bulunan değerleri bu şekilde alabiliriz.
puts "E-Posta: #{musteri[:eposta]}"
puts "Yaş: #{musteri[:yas]}"

puts musteri.keys().inspect #Bu metot ile anahtarlarımızı yazdırabiliriz
puts musteri.values().inspect #Bu metot ile değerlerimizi yazdırabiliriz
  
#Hash de bulunan değerleri değiştirebiliriz
musteri[:yas] += 1 
musteri[:ad] = "Hasan"
puts "Yaş: #{musteri[:yas]}"
puts "Adı: #{musteri[:ad]}"


=begin
Hash nesnesi içinde tanımladığımız anahtarı metot kullanmadan sorgulayabiliriz anahtar mevcut değilse nil yani boş değer döner.
Fakat fetch metodunu kullanaraktan sorgulamamız daha anlamlı olur şimdi bunu bir örnek üzerinden açıklayalım 
=end
kisi = {ad: "Cemal",soyad: "Selçuk"}
puts kisi.fetch(:yas, 'Anahtar mevcut değil')

kisi.store(:yas, 28)
puts "#{kisi[:ad]}'in yaşı #{kisi[:yas] } dir." #store ile yeni bir anahtar değer oluşturduk.


# Hash eşitlik kontrolü
kisi1 = {ad: "Cemal"}
kisi2 = {ad: "Cemal"}

# '==' veya 'eql?' kullanarak eşitlik durumunu kontrol edebiliriz.
puts kisi1 == kisi2     # => True
puts kisi1.eql?(kisi2)  # => True