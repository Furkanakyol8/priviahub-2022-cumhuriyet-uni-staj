# '<=>' Metotu: Başka bir zamanla karşılaştırır.

t = Time.now       #=> 2007-11-19 08:12:12 -0600
t2 = t + 2592000   #=> 2007-12-19 08:12:12 -0600
t <=> t2           #=> -1
t2 <=> t           #=> 1


# eql? Metotu: Zamanın başka bir zamana eşit olup olmadığını döndürür.

