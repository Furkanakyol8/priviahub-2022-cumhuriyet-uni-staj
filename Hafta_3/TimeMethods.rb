# Dünya saati   [ utc & gm]
Time.utc(2000,"jan",1,20,15,1)  #=> 2000-01-01 20:15:01 UTC
Time.gm(2000,"jan",1,20,15,1)   #=> 2000-01-01 20:15:01 UTC
# Yerel saat  [local]
Time.local(2000,"jan",1,20,15,1)   #=> 2000-01-01 20:15:01 -0600

# asctime & ctime    # zamanı kurallı bir string olarak bize döndürür
Time.now.asctime # => Fri Sep 23 10:08:08 2022
Time.now.ctime # => Fri Sep 23 10:08:08 2022


# Çağırma ve Dönüştürme Methodları
Time.now.inspect # 2022-09-23 16:58:49.1762864 +0300
Time.now.year    # 2022      # Yıl
Time.now.month   # 9         # Ay
Time.now.mday    # 23        # Ay günü
Time.now.hour    # 16        # Saat
Time.now.min     # 38        # Dakika
Time.now.sec     # 42        # Saniye
Time.now.usec    # 251873            # Mikrosaniye
Time.now.nsec    # 252266000         # Nanosaniye
Time.now.subsec  # 39467/156250      # Alt Saniye
Time.now.wday    # 5         # Hafta günü
Time.now.yday    # 266       # Yıl günü
Time.now.hash    # -2715077585132591307    # Hash değeri
Time.now.utc_offset  # 10800               # Saat ile utc arasındaki saniye farkı
Time.now.to_f    # 1663940322.254844       # Float değer
Time.now.to_i    # 1663940322              # İnteger değer
Time.now.to_r    # 16639403222558227/10000000    # Kesir değeri
Time.now.zone    # +03         # Bulunan saat dilimi
Time.now.to_a.inspect     # Array'a dönüştür
Time.now.to_s.inspect     # String'e dönüştür

# Karşılaştırma methodları  [eql? & <=>]
t1 = Time.now
t2 = Time.now

t1.eql?(t2)  # False çünkü oluşturulma esnasında geçen saniye farklı

t1 <=> t2  # -1  çünkü t1 t2 den daha eski bir zaman

# Sorgulama methodları
t1.utc?    # Saat utc mi? False
t1.dst?    # Saat yaz saati uygulaması mı? False
t1.sunday? # Bugün pazar mı? False
t1.monday? # Bugün pazartesi mi? False
t1.tuesday?     # Bugün salı mı? False
t1.wednesday?   # Bugün çarşamba mı? False
t1.thursday?    # Bugün perşembe mi? False
t1.friday?      # Bugün cuma mı? True
t1.saturday?    # Bugün cumartesi mi? False


# Yuvarlama methodları
# round   # En yakın tam değere yuvarlar
t = Time.utc(2010,3,30, 5,43,25.123456789r)
t                       #=> 2010-03-30 05:43:25.123456789 UTC
t.round                 #=> 2010-03-30 05:43:25 UTC
t.round(0)              #=> 2010-03-30 05:43:25 UTC
t.round(1)              #=> 2010-03-30 05:43:25.1 UTC
t.round(2)              #=> 2010-03-30 05:43:25.12 UTC
t.round(3)              #=> 2010-03-30 05:43:25.123 UTC
t.round(4)              #=> 2010-03-30 05:43:25.1235 UTC

# ceil  # Tavan değere doğru yuvarlar
t = Time.utc(2010,3,30, 5,43,25.0123456789r)
t                      #=> 2010-03-30 05:43:25 123456789/10000000000 UTC
t.ceil                 #=> 2010-03-30 05:43:26 UTC
t.ceil(0)              #=> 2010-03-30 05:43:26 UTC
t.ceil(1)              #=> 2010-03-30 05:43:25.1 UTC
t.ceil(2)              #=> 2010-03-30 05:43:25.02 UTC
t.ceil(3)              #=> 2010-03-30 05:43:25.013 UTC
t.ceil(4)              #=> 2010-03-30 05:43:25.0124 UTC

# floor  # Taban değere doğru yuvarlar
t = Time.utc(2010,3,30, 5,43,25.123456789r)
t                       #=> 2010-03-30 05:43:25.123456789 UTC
t.floor                 #=> 2010-03-30 05:43:25 UTC
t.floor(0)              #=> 2010-03-30 05:43:25 UTC
t.floor(1)              #=> 2010-03-30 05:43:25.1 UTC
t.floor(2)              #=> 2010-03-30 05:43:25.12 UTC
t.floor(3)              #=> 2010-03-30 05:43:25.123 UTC
t.floor(4)              #=> 2010-03-30 05:43:25.1234 UTC

# strftime [Flagler]
=begin
-  don't pad a numerical output
_  use spaces for padding
0  use zeros for padding
^  upcase the result string
#  change case
:  use colons for %z
=end
t = Time.now       # => 2015-05-02 11:35:26 +0300
t.strftime("%d")   # => "02"

# şimdi - ile yapıyoruz
t.strftime("%-d")  # => "2"   # 0'la doldurmadı...

# şimdi _ ile yapıyoruz
t.strftime("%_d")  # => " 2"  # SPACE karakteri ile doldurdu...

# şimdi 0 ile yapıyoruz
t.strftime("%0d")  # => " 02" # 0 ile doldurdu...
t.strftime("%A")        # => "Saturday"
t.strftime("%^A")       # => "SATURDAY" # upcase yaptı
t.strftime("%#A")       # => "SATURDAY" # changecase demek, upcase ise down, downcase ise up yapmak demek.
# saturday downcase geldi, upcase oldu
t.strftime("%z")        # => "+0300"
t.strftime("%:z")      # => "+03:00" # : ile ayırdı
t.strftime("%d")   # => "02"
t.strftime("%10d")   # => "0000000002" # 10 basamak yaptı.

# Formatlama
=begin
İşaret	  Açıklama
%Y	    4 dijitli yıl
%C     	yıl/100, yüzyıl için
%y	    yıl mod 100, 2015 için 15 gelir.
%m	    Yılın ayı. (01..12)
%B	    Ayın tam adı (January)
%b	    Ayın kısa adı (Jan)
%d	    Ayın günü, 0 eklemeli (01..31)
%e	    Ayın günü, SPACE karakteri eklemeli ( 1..31)
%j	    Yılın günü (001..366)
%H	    Saat, 24-saat formatında 0 eklemeli (00..23)
%k	    Saat, 24-saat formatında SPACE karakteri eklemeli ( 0..23)
%I	    Saat, 12-saat formatında 0 eklemeli (01..12)
%l	    Saat, 12-saat formatında SPACE karakteri eklemeli ( 1..12)
%P	    Meridyen göstergeci, küçük harf (am ya da pm)
%p	    Meridyen göstergeci, büyük harf (AM ya da PM)
%M	    Dakika (00..59)
%S	    Saniye (00..60)
%L	    Milisaniye (000..999)
%N	    Kesirli saniye, varsayılan 9 dijitli
%z	    saat ve dakika ofsetli UTC zaman kuşağı (time zone)
%Z	    Zaman kuşağının harfsel karşılığı
%A	    Haftanın günü, tam yazım
%a	    Haftanın günü, kısa yazım
%u	    Haftanın kaçıncı günü, Pazartesi 1
%w	    Haftanın kaçıncı günü, Pazar 0
%c	    "%a %b %e %T %Y" şeklinde
%D	    "%m/%d/%y" şeklinde
%F	    ISO 8601 - "%Y-%m-%d"
%v	    VMS - "%e-%^b-%4Y"
%x	    %D ile aynı
%X	    %T ile aynı
%r	    12 saat cinsinden saat "%I:%M:%S %p"
%R	    24 saat cinsinden saat "%H:%M"
%T	    23 saat cinsinden saat "%H:%M:%S"
=end
t = Time.now        # => 2015-05-16 14:29:43 +0300
t.strftime("%N")    # => "691659000"
t.strftime("%3N")   # => "691" # milisaniye, 3 dijit
t.strftime("%6N")   # => "691659" # mikrosaniye, 6 dijit

t.strftime("%z")    # => "+0300"
t.strftime("%Z")    # => "EEST"
#    Eastern European Summer Time yani
#    yaz saati :)

t.strftime("%A")    # Sunday
t.strftime("%a")    # Sun
t.strftime("%u")    # "7"
t.strftime("%w")   # "0"