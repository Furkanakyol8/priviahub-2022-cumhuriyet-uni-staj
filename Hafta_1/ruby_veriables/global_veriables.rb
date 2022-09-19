# Global değişkenler $ ile başlar. Başlatılmamışsa nil değerine sahip olur ve -w seçeneğiyle uyarılar üretir.

$global_var = 10 # $ ile başlayan ifade global değişkenimizdir.

class Class1
   def print_global # def ile metot tanımlaması yapıyoruz. Yani Ruby’ye adı print_global olan bir metot tanıtımı başlattığımızı bildirir. 
      puts "Global veriable in Class1 is 
      #$global_var" # puts ile de yazdırma işlemi yapıyoruz daha sonra end ile metot tanımlamasını bitirdiğimizi söylüyoruz.
   end
end

# Ruby'de, herhangi bir değişken veya sabitin değerine, o değişken veya sabitin hemen önüne bir karma (#) karakteri koyarak erişebiliriz.
   
class Class2
   def print_global
      puts "Global veriable in Class2 is 
      #$global_var"
   end
end


# Çıktımız ise: Global variable in Class1 is 10
#               Global variable in Class2 is 10 şeklinde olur.
