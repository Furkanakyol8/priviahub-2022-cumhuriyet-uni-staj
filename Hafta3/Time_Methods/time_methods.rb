puts Time.now # Bu kullanım bize tarihi saati ve içinde bulunduğumuz saat dilimini verir.
puts "Yıl: #{Time.now.year}"
puts "Ay: #{Time.now.month}"
puts "Gün: #{Time.now.day}"

puts "Saat: #{Time.now.hour}"
puts "Dakika: #{Time.now.min}"
puts "Saniye: #{Time.now.sec}"

=begin
utc ve gm dünyadaki ortalama zamanı belirtir.
Yıl belirtilmelidir diğer değerler varsayılan olarak o alan için minumum değerdir nill de döndürebilir.
Aylar, 1'den 12'ye kadar olan sayılarla veya üç harfli İngilizce ay adlarıyla belirtilebilir. Saatler 24 saatlik bir saatte (0,23) belirtilir.
Herhangi bir değer aralık dışındaysa bir ArgumentError oluşturur.
=end
Time.utc(2000,"ocak",1,20,15,1)  #=> 2000-01-01 20:15:01 UTC
Time.gm(2000,"ocak",1,20,15,1)   #=> 2000-01-01 20:15:01 UTC

# Yerel saat dilimindeki değerleri döndürür.
Time.local(2000,"ocak",1,20,15,1)   #=> 2000-01-01 20:15:01 -0600

# Time.new metodu ile kendi istediğimiz bir zamanı oluşturabiliriz. 
t=Time.new(1999,7) # 1999-07-01 00:00:00 +0300
# ingilizce olarak günleri kontrol edebiliriz.
puts t.monday? # false 
puts t.tuesday? # true

# epoch cinsinden zamanları bu şekilde normal zaman diliminde yazdırabiliriz.
Time.at(81464400)      # => 1972-08-01 00:00:00 +0300
Time.at(81464400).year # => 1972

# Ekleme veya çıkarma yapmak için kullanılır. 
Time.now - (60 * 60) #1 saat önceyi bulmak için 60 saniye * 60 dakika yapmamız yeterli.
t = Time.now       #=> 2007-11-19 08:23:10 -0600
t2 = t + 2592000   #=> 2007-12-19 08:23:10 -0600
t2 - t             #=> 2592000.0
t2 - 2592000       #=> 2007-11-19 08:23:10 -0600

=begin
Karşılaştırma işlemlerini <=> ile yapabiliriz.
-1 zaman küçükse, 0 eşitse, 1 büyükse
=end
t = Time.now       #=> 2022-09-22 09:33:59 +0300
t2 = t + 2592000   #=> 2022-10-22 09:33:59 +0300
t <=> t2           #=> -1
t2 <=> t           #=> 1

# asctime ve ctime metodları zamanı String bir şekilde döndürür.
Time.now.asctime   #=> "Thu Sep 22 09:32:09 2022"
Time.now.ctime     #=> "Thu Sep 23 09:32:09 2022"

# Günü döndürür.
t = Time.now   #=> 2022-09-22 09:33:59 +0300
t.day          #=> 22
t.mday         #=> 22

# Yerel saat dilimminde yaz saati uygulaması varsa true döndürür.
Time.local(2022, 1, 1).dst?    #=> false

# eql? metodu, iki zaman aynıysa true döndürür.
a = Time.new(2000, 12, 23, 9, 3, 3.0)
b = Time.new(2000, 12, 23, 9, 3, 3.0)
a.eql?(b) #true

# UTC'de zamanı temsil eden yeni bir time nesnesi döndürür.
t = Time.local(2000,1,1,20,15,1)   #=> 2000-01-01 20:15:01 -0600
t.gmt?                             #=> false
y = t.getgm                        #=> 2000-01-02 02:15:01 UTC
y.gmt?                             #=> true
t == y                             #=> true

# Yerel saatteki saati temsil eden yeni bir Time nesnesi döndürür. Parametre olarak saniye gibi değerler verilebilir 
t = Time.utc(2000,1,1,20,15,1)  #=> 2000-01-01 20:15:01 UTC
l = t.getlocal                  #=> 2000-01-01 14:15:01 -0600
t == l                          #=> true
j = t.getlocal("+09:00")        #=> 2000-01-02 05:15:01 +0900
t == j                          #=> true
k = t.getlocal(9*60*60)         #=> 2000-01-02 05:15:01 +0900
t == k                          #=> true

# UTC cinsinden zamanı temsil eden yeni bir Time nesnesi döndürür.
t = Time.local(2000,1,1,20,15,1)   #=> 2000-01-01 20:15:01 -0600
t.gmt?                             #=> false
y = t.getgm                        #=> 2000-01-02 02:15:01 UTC
y.gmt?                             #=> true
t == y                             #=> true

# Saat UTC(GMT) cinsindense true döndürür.
t = Time.now                        #=> 2022-09-22 09:33:59 +0300
t.gmt?                              #=> false
t = Time.gm(2000,1,1,20,15,1)       #=> 2000-01-01 20:15:01 UTC
t.gmt?                              #=> true

# Local saat dilimi ile GMT arasındaki farkı saniye cinsinden döndürür.
t = Time.gm(2000,1,1,20,15,1)   #=> 2000-01-01 20:15:01 UTC
t.gmt_offset                    #=> 0
l = t.getlocal                  #=> 2000-01-01 14:15:01 -0600
l.gmt_offset                    #=> -21600

# Saati UTC(GMT)'ye çevirir.
t = Time.now   #=> 2022-09-22 09:33:59 +0300
t.gmt?         #=> false
t.gmtime       #=> 2022-09-22 15:33:59 +0300
t.gmt?         #=> true

# Local saat dilimi ile UTC arasındaki farkı saniye cinsinden döndürür.
t = Time.gm(2000,1,1,20,15,1)   #=> 2000-01-01 20:15:01 UTC
t.gmt_offset                    #=> 0
l = t.getlocal                  #=> 2000-01-01 14:15:01 -0600
l.gmt_offset                    #=> -21600

# saati döndürür.
t = Time.now   #=> 2022-09-22 09:33:59 +0300
t.hour         #=> 9

# UTC cinsinden verilmiş bir saati local time'a çevirir.
t = Time.utc(2000, "jan", 1, 20, 15, 1) #=> 2000-01-01 20:15:01 UTC
t.localtime                             #=> 2000-01-01 14:15:01 -0600
t.utc?                                  #=> false

# ay için günü döndürür.
t = Time.now   #=> 2022-09-22 09:33:59 +0300
t.mday         #=> 22

# saatin dakikasını döndürür.
t = Time.now   #=> 2022-09-22 09:33:59 +0300
t.min          #=> 33

# yılın ayını döndürür.
t = Time.now   #=> 2022-09-22 09:33:59 +0300
t.mon          #=> 09
t.month        #=> 09

# nsec

# round

# saniyeyi döndürür.
t = Time.now   #=> 2022-09-22 09:33:59 +0300
t.sec          #=> 59

#subsec 

# zamana bir saniye ekler.
t = Time.now       #=> 2022-09-22 09:33:59 +0300
t.succ             #=> 2022-09-22 09:34:00 +0300

=begin
zaman için 10 elemanlı bir değerler dizisi döndürür.
[sec, min, hour, day, month, year, wday, yday, isdst, zone]
=end
t = Time.now     #=> 2022-09-22 09:33:59 +0300
now = t.to_a     #=> [59, 33, 9, 22, 09, 2022, 4, 266, false, "CST"]

# Epoch'tan bu yana geçen zamanı float şeklinde gösterir.
t = Time.now
"%10.5f" % t.to_f   #=> "1270968744.77658"
t.to_i              #=> 1270968656 # int şeklinde gösterir.

# zamanın değerini rasyonel bir sayı şeklide gösterir.
t = Time.now
t.to_r            #=> (1270968792716287611/1000000000)

# Zamanı string şeklinde gösterir
t = Time.now
t.to_s       #=> "2022-09-22 09:33:59 +0300"

# Zamanın nanosaniye değerini döndürür.
t = Time.now        #=> 2007-11-17 15:18:03 +0900
"%10.9f" % t.to_f   #=> "1195280283.536151409"
t.nsec              #=> 536151406

# Zamanı mikrosaniye cinsinden döndürür.
t = Time.now        #=> 2007-11-19 08:03:26 -0600
"%10.6f" % t.to_f   #=> "1195481006.775195"
t.usec              #=> 775195

# Haftanın gününü temsil eden bir sayı döndürür.
t = Time.now   #=> 2022-09-22 09:33:59 +0300
t.wday         #=> 4

# Yılın gününü temsil eden bir sayı döndürür.
t = Time.now   #=> 2022-09-22 09:33:59 +0300
t.yday         #=> 266

# Yıl değerini döndürür.
t = Time.now   #=> 2022-09-22 09:33:59 +0300
t.year         #=> 2022

# Saatin hangi tipte olduğunu döndürür.
t = Time.gm(2000, "jan", 1, 20, 15, 1)
t.zone   #=> "UTC"
t = Time.local(2000, "jan", 1, 20, 15, 1)
t.zone   #=> "CST"