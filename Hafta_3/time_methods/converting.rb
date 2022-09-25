# asctime Metotu: Zamanı bir dize olarak döndürür.

Time.now.asctime   #=> "Wed Apr  9 08:56:03 2003"
Time.now.ctime     #=> "Wed Apr  9 08:56:03 2003"


# inspect Metotu: Zamanı bir dize olarak ayrıntılı olarak döndürür.

t = Time.now
t.inspect                             #=> "2012-11-10 18:16:12.261257655 +0100"
t.strftime "%Y-%m-%d %H:%M:%S.%N %z"  #=> "2012-11-10 18:16:12.261257655 +0100"

t.utc.inspect                          #=> "2012-11-10 17:16:12.261257655 UTC"
t.strftime "%Y-%m-%d %H:%M:%S.%N UTC"  #=> "2012-11-10 17:16:12.261257655 UTC"


# strftime Metotu: Verilen bir biçime göre zamanı bir dizge olarak döndürür.

# to_a Metotu: Zamandan 10 elemanlı bir değerler dizisi döndürür.

t = Time.now     #=> 2007-11-19 08:36:01 -0600
now = t.to_a     #=> [1, 36, 8, 19, 11, 2007, 1, 323, false, "CST"]


# to_s Metotu: Zamanın dize temsilini döndürür.

t = Time.now
t.to_s          #=> "2012-11-10 18:16:12 +0100"


# getutc(diğer adıyla getgm) Metotu: UTC'ye dönüştürülen yeni bir zaman döndürür. 

t = Time.local(2000,1,1,20,15,1)   #=> 2000-01-01 20:15:01 -0600
t.gmt?                             #=> false
y = t.getgm                        #=> 2000-01-02 02:15:01 UTC
y.gmt?                             #=> true
t == y                             #=> true


# getlocal Metotu: Yerel saate dönüştürülmüş yeni bir saat döndürür.
# utc(diğer adıyla gmtime) Metotu: Zamanı yerinde UTC'ye dönüştürür.

t = Time.utc(2000,1,1,20,15,1)  #=> 2000-01-01 20:15:01 UTC
t.utc?                          #=> true

l = t.getlocal                  #=> 2000-01-01 14:15:01 -0600
l.utc?                          #=> false
t == l                          #=> true


# localtime: Saati yerinde yerel saate dönüştürür.

t = Time.utc(2000, "jan", 1, 20, 15, 1) #=> 2000-01-01 20:15:01 UTC
t.utc?                                  #=> true

t.localtime                             #=> 2000-01-01 14:15:01 -0600
t.utc?                                  #=> false

t.localtime("+09:00")                   #=> 2000-01-02 05:15:01 +0900
t.utc?                                  #=> false