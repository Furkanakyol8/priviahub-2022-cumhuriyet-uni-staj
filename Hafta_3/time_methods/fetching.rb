# year Metotu: Zamanın yılını döndürür.

t = Time.now   #=> 2007-11-19 08:27:51 -0600
t.year         #=> 2007


# month Metotu: Zamanın ayını döndürür.

t = Time.now   #=> 2007-11-19 08:27:30 -0600
t.mon          #=> 11
t.month        #=> 11


# mday Metotu: Ayın gününü verir.

t = Time.now   #=> 2007-11-19 08:27:03 -0600
t.day          #=> 19
t.mday         #=> 19


# hour Metotu: Zamanın saat değerini döndürür.

t = Time.now   #=> 2007-11-19 08:26:20 -0600
t.hour         #=> 8


# min Metotu: Saatin dakika değerini döndürür.

t = Time.now   #=> 2007-11-19 08:25:51 -0600
t.min          #=> 25


# sec Metotu: Zamanın saniye değerini döndürür.

t = Time.now   #=> 2007-11-19 08:25:02 -0600
t.sec          #=> 2


# usec Metotu: Zamanın alt saniye değerindeki mikrosaniye sayısını döndürür.

t = Time.now        #=> 2020-07-20 22:05:58.459785953 +0900
t.usec              #=> 459785


# nsec Metotu: Zamanın alt saniye kısmındaki nanosaniye sayısını döndürür.

t = Time.now        #=> 2020-07-20 22:07:10.963933942 +0900
t.nsec              #=> 963933942


# subsec Metotu: Zamanın alt saniye değerini döndürür.

t = Time.now        #=> 2020-07-20 15:40:26.867462289 +0900
t.subsec            #=> (867462289/1000000000)


# wday Metotu: Zamanın hafta içi tamsayı değerini döndürür.

t = Time.now   #=> 2007-11-20 02:35:35 -0600
t.wday         #=> 2
t.sunday?      #=> false
t.monday?      #=> false
t.tuesday?     #=> true
t.wednesday?   #=> false
t.thursday?    #=> false
t.friday?      #=> false
t.saturday?    #=> false


# yday Metotu: Zamanın (1 == 1 Ocak) tamsayı yıl gün değerini döndürür.

t = Time.now   #=> 2007-11-19 08:32:31 -0600
t.yday         #=> 323


# hash Metotu: Zaman için tamsayı karma değerini döndürür.

# utc_offset Metotu: Saat ile UTC arasındaki farkı saniye cinsinden döndürür.

t = Time.gm(2000,1,1,20,15,1)   #=> 2000-01-01 20:15:01 UTC
t.gmt_offset                    #=> 0
l = t.getlocal                  #=> 2000-01-01 14:15:01 -0600
l.gmt_offset                    #=> -21600


# to_f, to_i Metotları: Zaman için Epoch'tan bu yana geçen saniyelerin kayan nokta sayısını verir. to_i, Zaman için Epoch'tan bu yana geçen saniyelerin tam sayısını döndürür.

t = Time.now        #=> 2020-07-20 22:00:29.38740268 +0900
t.to_f              #=> 1595250029.3874028
t.to_i              #=> 1595250029


# to_r Metotu: Zaman için Epoch'tan bu yana geçen saniye sayısını verir.

t = Time.now      #=> 2020-07-20 22:03:45.212167333 +0900
t.to_r            #=> (1595250225212167333/1000000000)


# zone Metotu: Zamanın saat diliminin dize temsilini döndürür.

t = Time.gm(2000, "jan", 1, 20, 15, 1)
t.zone   #=> "UTC"



