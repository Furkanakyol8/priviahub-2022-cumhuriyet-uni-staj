=begin
    Hash yapısı arraylere çok benzemekle birlikte aralarında önemli bir fark vardır; 
    Array'ler elemanların indexlerini otomatik oluştururlar.
    Hash yapısında ise indexleri kendimiz belirleriz
    Hash, içerisinde ikili değerler taşıyan bir nesne türüdür.
    Süslü parantezler içerisinde yazılır
    İndexleri anahtar kelimesi olarak kendimiz belirleriz ve bu anahtarlar benzersiz olmalıdır.
=end

# Hash oluşturma yöntemleri
kisi = {'ad' => 'Furkan', 'soyad' => 'Akyol', 'yas' => '22'}
kisi = {:ad => 'Furkan', :soyad => 'Akyol', :yas => '22'}
kisi = {ad: 'Furkan', soyad: 'Akyol', yas: '22'}
# new kurucu methodu ile de yeni bir Hash oluşturabiliriz
kisi = Hash.new()
puts kisi.inspect   # => {}




# Hash erişim 
araba = {
    marka:      "Audi",
    modeli:     "A3",
    yil:        "2016",
    kazasayisi: 1
}
puts "Arabanın markası: #{araba[:marka]}\nArabanın modeli: #{araba[:modeli]}\nArabanın üretim yılı: #{araba[:yil]}\nGeçirdiği kaza sayısı: #{araba[:kazasayisi]}"

# sadece anahtarlara erişim
puts araba.keys().inspect # => [:marka, :modeli, :yil, :kazasayisi]

# sadece değerlere erişim
puts araba.values().inspect #=> ["Audi", "A3", "2016", 1]

# Bir anahtarın varlığını .fetch methodu ile kontrol edebiliriz. virgülden önce kontrol edilecek anahtar ismi, sonra ise anahtar yoksa yazacak mesajı gireriz
puts araba.fetch(:fiyat, 'anahtar mevcut değil')    # => anahtar mevcut değil






# Hash eşitlik kontrolü
kisi1 = {ad: Furkan}
kisi2 = {ad: Ahmet}
# '==' veya 'eql?' kullanarak eşitlik durumunu kontrol edebiliriz.
puts kisi1 == kisi2     # => False
puts kisi1.eql?(kisi2)  # => False


=begin
    Hash yapısı oluşturma yöntemleri
    Hash yapısına erişim
    Hash eşitlik kontrolü
=end
