# round Metotları: Alt saniyeler yuvarlanmış yeni bir zaman döndürür.

t = Time.utc(2010,3,30, 5,43,25.123456789r)
t                       #=> 2010-03-30 05:43:25.123456789 UTC
t.round                 #=> 2010-03-30 05:43:25 UTC
t.round(0)              #=> 2010-03-30 05:43:25 UTC
t.round(1)              #=> 2010-03-30 05:43:25.1 UTC
t.round(2)              #=> 2010-03-30 05:43:25.12 UTC
t.round(3)              #=> 2010-03-30 05:43:25.123 UTC
t.round(4)              #=> 2010-03-30 05:43:25.1235 UTC


# ceil Metotu: Bir tavana yükseltilmiş alt saniyelerle yeni bir zaman döndürür.

t = Time.utc(2010,3,30, 5,43,25.0123456789r)
t                      #=> 2010-03-30 05:43:25 123456789/10000000000 UTC
t.ceil                 #=> 2010-03-30 05:43:26 UTC
t.ceil(0)              #=> 2010-03-30 05:43:26 UTC
t.ceil(1)              #=> 2010-03-30 05:43:25.1 UTC
t.ceil(2)              #=> 2010-03-30 05:43:25.02 UTC
t.ceil(3)              #=> 2010-03-30 05:43:25.013 UTC
t.ceil(4)              #=> 2010-03-30 05:43:25.0124 UTC


# floor Metotu: Bir kata indirilmiş alt saniyelerle yeni bir zaman döndürür.

t = Time.utc(2010,3,30, 5,43,25.123456789r)
t                       #=> 2010-03-30 05:43:25.123456789 UTC
t.floor                 #=> 2010-03-30 05:43:25 UTC
t.floor(0)              #=> 2010-03-30 05:43:25 UTC
t.floor(1)              #=> 2010-03-30 05:43:25.1 UTC
t.floor(2)              #=> 2010-03-30 05:43:25.12 UTC
t.floor(3)              #=> 2010-03-30 05:43:25.123 UTC
t.floor(4)              #=> 2010-03-30 05:43:25.1234 UTC