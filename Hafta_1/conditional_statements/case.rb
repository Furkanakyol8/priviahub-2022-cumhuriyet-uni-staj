# case yapılarını, çok seçenekli alternatif if yapıları gibi düşünebiliriz.
# aşağıdaki örnekte option değişkeni değeri 4 olduğu için, 4 durumuna girer ve "işlem 4" yazdırır.

option = 4

case option

when 1
    puts "işlem 1"
when 2
    puts "işlem 2"
when 3
    puts "işlem 3"
when 4
    puts "işlem 4"
else
    puts "geçersiz işlem"

end