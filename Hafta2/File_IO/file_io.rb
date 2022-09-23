=begin
    Dosyalar üzerinde çeşitli işlemler yapmak için çeşitli modlar ve bu modları temsil eden parametreler mevcuttur.
    Bu parametreler;
    - r  : read only  -  sadece okumak için kulanılır, dosya mevcut olmalıdır
    - w  : wride      -  yazmak için kullanılır, dosya yoksa otomatik oluşturulur
    - a  : append     -  dosyaya ekleme yapmak için kullanılır, dosya yoksa otomatik oluşturulur
    - r+ : hem okuma hem de yazmak için kullanılır, dosya mevcut olmalıdır
    - w+ : hem okuma hem de yazmak için kullanılır, dosya yoksa otomatik oluşturulur
    - a+ : okuma ve ekleme için kullanılır, dosya yoksa oluşturulur
=end

# var olan bir dosya içeriğini okuma, eğer dosyamız var olmasaydı No such file or directory hatası alırdık.
File.open("metin_belgesi.txt", "r") do |f|
    f.each_line do |line|   # satırlar halinde yazdırmak için each_line kullandık
      puts line
    end
end

# Bir dosya oluşturup içine verileri yazalım
arr = ["AUDI", "BMW", "MERCEDES"]
File.open("araba.txt", "w") do |f|
    arr.each do |a|
        f.write a + "\n"
    end
end
  
# Dosyada virgül görülen yerleri satırlara ayırma
File.open("puan_durumu.txt").each(",") do |line|
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
dosyaya_yaz("yeni_dosya.txt")   #yeni_dosya adında bir dosya oluşturur ve içine veri1, veri2 yaz.


file = File.open("yeni_dosya.txt", "r:utf-8")
until file.eof? # eof? ile dosyanın sonunda değilsek işlem yapmaya devam eder.
    puts file.gets  #.gets ile tüm içeriği alıyoruz.
end
  
# Mevcut bir dosyayı yeniden adlandırma (.rename)
File.rename("araba.txt", "arabalar.txt")

# Mevcut bir dosyanın var olup olmadığını sorgulama (.exist?)
puts "dosya mevcut" if File.exist?("yeni_dosya.txt")
  
# Dosyanın tam olarak nerede olduğunu öğrenme (.expand_path)
puts File.expand_path("yeni_dosya.txt")

#Dosya kopyalamak, taşımak, yeni bir klasör oluşturmak, silmek gibi işlemler için 'fileutils' kütüphanesini import ederiz.
require 'fileutils'
  
#Dosya kopyalamak (.cp)
FileUtils.cp("arabalar.txt", "cars.txt") # Birinci kısım kopyalanan dosyanın adı, ikinci kısım yeni dosyanın adı.

  
#Yeni bir klasör oluşturmak için FileUtils.mkdir kullanılır.
unless Dir.exist?("yeni klasor") # Hata almamak için dosyanın var olup olmadığını kontrol ediyoruz
    FileUtils.mkdir("yeni klasor") 
end
  
#dosyayı silmek için FileUtils.rm kullanılır.
if File.exist?("cars.txt") # hata almamak için dosyanın var olup olmadığını kontrol ediyoruz
    FileUtils.rm("cars.txt")
end

#klasörü silmek için FileUtils.rmdir kullanılır
if Dir.exist?("yeni klasor")    # hata almamak için klasörün var olup olmadığını kontrol ediyoruz
    FileUtils.rmdir("yeni klasor")
end

# Bulunduğumuz dosyanın klasör yerini elde edelim
puts File.dirname(__FILE__)
puts __FILE__   # /home/berkay/priviahub-2022-cumhuriyet-uni-staj/Hafta_2/File_IO/file_io.rb

#Bulunduğumuz geçerli klasörü ögrenmek için 
puts Dir.pwd    #=> /home/berkay/priviahub-2022-cumhuriyet-uni-staj/Hafta_2/File_IO
  
# Bulunduğumuz klasörün içindeki her şeyi yazdırma (Dir.entries("."))
puts Dir.entries(".")

# Bulunduğumuz klasördeki tüm txt uzantılı dosyaları yazdıralım
puts Dir["*.txt"]