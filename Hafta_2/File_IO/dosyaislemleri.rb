=begin
    Bu bölümde ruby'de dosya işlemlerine değineceğiz.

    Dosyalar üzerinde çeşitli işlemler yapmak için çeşitli modlar ve bu modları temsil eden parametreler mevcuttur.
    Bu parametreler;
    r  : read only  -  sadece okumak için kulanılır, dosya mevcut olmalıdır
    w  : wride      -  yazmak için kullanılır, dosya yoksa otomatik oluşturulur
    a  : append     -  dosyaya ekleme yapmak için kullanılır, dosya yoksa otomatik oluşturulur
    r+ : hem okuma hem de yazmak için kullanılır, dosya mevcut olmalıdır
    w+ : hem okuma hem de yazmak için kullanılır, dosya yoksa otomatik oluşturulur
    a+ : okuma ve ekleme için kullanılır, dosya yoksa oluşturulur
    şeklindedir.

    Şimdi örnekler üzerinde inceleyelim.
=end

# var olan bir dosya içeriğini okuma
File.open("veriler.txt", "r") do |f|
    f.each_line do |line|   # satırlar halinde yazdırmak için each_line kullandık
      puts line
    end
end
  
# w parametresi kullanarak bir dosya oluşturma
arr = ["elma", "armut", "kayısı"]
File.open("meyveler.txt", "w") do |f|
    arr.each do |a|
        f.write a + "\n"
    end
end
  
# Dosyada virgül görülen yerleri satırlara ayırma
File.open("data.txt").each(",") do |line|
    puts line
end
  
# method içerisinde dosya oluşturma ve içine veri yazma
def dosyaya_yaz(dosya_adi)
    begin
        dosya = File.open(dosya_adi, "w:utf-8") 
        dosya.puts "veri 1"
        dosya << "veri 2"
    ensure  # kod bloğu hata verse de ensure altındaki kodlar çalışır
        dosya.close
    end
end
dosyaya_yaz("yeni_dosya.txt")   #yeni_dosya isimli bir dosya oluşturur ve içine veri1, veri2 yazar


file = File.open("yeni_dosya.txt", "r:utf-8")
until file.eof? # eof? ile dosyanın sonunda veya başında olma durumumuzu kontrol ederiz
    puts file.gets  #.gets ile tüm içeriği alıyoruz.
end
  
# dosya yeniden adlandırma (.rename)
File.rename("meyveler.txt", "meyveler2.txt")

# bir dosyanın varlığını sorgulama (.exist?)
puts "dosya mevcut" if File.exist?("yeni_dosya.txt")
  
# bir dosyanın tam olarak nerede olduğunu öğrenme (.expand_path)
puts File.expand_path("yeni_dosya.txt")

#Dosya kopyalamak, taşımak, yeni bir klasör oluşturmak, silmek gibi işlemler için 'fileutils'
# kütüphanesini import ediyoruz
require 'fileutils'
  
#dosya kopyalamak (.cp)
FileUtils.cp("meyveler2.txt", "meyveler3.txt") # kopyalanan dosya, yeni dosya adı
  
#yeni bir klasör oluşturmak (FileUtils.mkdir)
unless Dir.exist?("yeni klasor") # hata almamak için dosyanın var olup olmadığını kontrol ediyoruz
    FileUtils.mkdir("yeni klasor") 
end
  
#dosyayı silmek
if File.exist?("meyveler3.txt") # hata almamak için dosyanın var olup olmadığını kontrol ediyoruz
    FileUtils.rm("meyveler3.txt")
end
  
#klasörü silmek
if Dir.exist?("yeni klasor")    # hata almamak için klasörün var olup olmadığını kontrol ediyoruz
    FileUtils.rmdir("yeni klasor")
end

# Bulunduğumuz dosyanın klasör yerini elde edelim
puts File.dirname(__FILE__)
puts __FILE__   #=> /home/furkan/priviahub-2022-cumhuriyet-uni-staj/Hafta_2/File_IO/dosyaislemleri.rb
  
puts Dir.pwd    #=> /home/furkan/priviahub-2022-cumhuriyet-uni-staj/Hafta_2/File_IO
  
# Bulunduğumuz klasörün içindeki her şeyi yazdırma (Dir.entries("."))
puts Dir.entries(".")

# bulunduğumuz klasördeki tüm txt uzantılı dosyaları yazdıralım
puts Dir["*.txt"]
