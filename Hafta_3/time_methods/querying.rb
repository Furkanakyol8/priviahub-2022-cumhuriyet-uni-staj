# utc? Metotu: Saatin UTC olup olmadığını döndürür.

t = Time.now                        #=> 2007-11-19 08:15:23 -0600
t.utc?                              #=> false
t = Time.gm(2000,"jan",1,20,15,1)   #=> 2000-01-01 20:15:01 UTC
t.utc?                              #=> true


# dst? Metotu: Saatin DST (yaz saati uygulaması) olup olmadığını döndürür.

Time.local(2000, 1, 1).zone    #=> "CST"
Time.local(2000, 1, 1).isdst   #=> false
Time.local(2000, 1, 1).dst?    #=> false


=begin
    
sunday?: Saatin Pazar olup olmadığını döndürür.

monday?: Saatin Pazartesi olup olmadığını döndürür.

tuesday?: Saatin Salı olup olmadığını döndürür.

wednesday?: Saatin Çarşamba olup olmadığını döndürür.

thursday?: Saatin Perşembe olup olmadığını döndürür.

friday?: Saatin Cuma olup olmadığını döndürür.

saturday?: Saatin Cumartesi olup olmadığını döndürür.
    
=end

t = Time.local(1990, 4, 1)       #=> 1990-04-01 00:00:00 -0600
t.sunday?                        #=> true

t = Time.local(2003, 8, 4)       #=> 2003-08-04 00:00:00 -0500
t.monday?                        #=> true

t = Time.local(1991, 2, 19)      #=> 1991-02-19 00:00:00 -0600
t.tuesday?                       #=> true

t = Time.local(1993, 2, 24)      #=> 1993-02-24 00:00:00 -0600
t.wednesday?                     #=> true

t = Time.local(1995, 12, 21)     #=> 1995-12-21 00:00:00 -0600
t.thursday?                      #=> true

t = Time.local(1987, 12, 18)     #=> 1987-12-18 00:00:00 -0600
t.friday?                        #=> true

t = Time.local(2006, 6, 10)      #=> 2006-06-10 00:00:00 -0500
t.saturday?                      #=> true