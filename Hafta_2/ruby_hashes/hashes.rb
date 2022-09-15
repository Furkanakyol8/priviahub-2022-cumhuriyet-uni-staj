hash = {'anahtar1' => 'değer', 'anahtar2' => 'değer'}
#hash nesnesi içinde anahtar ve değer ikilisi barındıran bir nesnedir.
#indeks numarasına sahip değildir. İndeksleri anahtar değeri olarak kendimiz belirleriz.
#hashlar birkaç farklı yapıda oluşturulur. Hepsi aynı işlemi yapar.
#Yeni bir sözlük oluşturulurken süslü parantez kullanılır. Virgül ile anahtar ve değer leri yazarız. Örneğe bakalım.
kisi = {'adi' => 'Vesile', 'soyadi' => 'Yavuz', 'yas' => '22'}
kisi = {:adi => 'Vesile', :soyadi => 'Yavuz', :yas => '22'}
kisi = {adi: 'Vesile', soyadi: 'Yavuz', yas: '22'}
#böyle üç farklı durumla hash oluşturulabilir. Ya da boş hash oluşturmak için 
kisi = Hash.new()
puts kisi.inspect #şeklinde yazabiliriz.

#hash yapılarına nasıl erişildiğine bir örnekle bakalım.
ogrenci = {
    ad:     "Taha",
    soyad:  "Göçer"
    sinifi:  "Lisans-4"
    yas:     22
}

puts "Öğrenci: #{ogrenci[:ad]} #{ogrenci[:soyad]}"
puts "Sınıfı: #{ogrenci[:sinifi]}"
puts "Yaş: #{ogrenci[:yas]}"

#tüm anahtarları ve değerleride yazdırabiliriz.
puts ogrenci.keys().inspect  #anahtar
puts ogrenci.values().inspect  #değer

#anahtarını bildiğimiz değeri değiştirmek için
ogrenci[:yas] += 1
puts "Yaş: #{ogrenci[:yas]}"

#hash nesnesi içinde tanımladığımız anahtarı sorgulayabiliriz. Anahtar mevcurt değilse nil yani boş değer döner. 
kisi = {
    ad: "Vesile"
    soyad: "Yavuz"

}
puts.kisi.fetch(:yas, "Anahtar mevcut değil") #fetch komutunu kullanarak sorguladık.

kisi.store(:yas), 22
puts "#{kisi[:ad]}'ın yaşı #{kisi[:yas] } dir." #store ile yeni bir anahtar değer oluşturduk.


#hashlar arasında eşitlik kontrolü için iki yöntem vardır.
kisi1 = {ad: 'Vesile'}
kisi2 = {ad: 'Nalan'}
 puts kisi1 == kisi2
 puts kisi1.eql?(kisi2)

 