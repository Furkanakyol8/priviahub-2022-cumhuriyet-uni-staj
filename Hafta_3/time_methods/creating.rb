# new Metotu: Verilen bağımsız değişkenlere dayalı olarak yeni bir Time nesnesi döndürür.

Time.new(2000)                                 # => 2000-01-01 00:00:00 -0600
Time.new(2000, 12, 31, 23, 59, 59.5)           # => 2000-12-31 23:59:59.5 -0600


# local Metotu: Verilen bağımsız değişkenlere dayalı olarak yeni bir Time nesnesi döndürür; saat dilimi yerel saat dilimidir.

Time.local(2000)                   # => 2000-01-01 00:00:00 -0600
Time.local(0, 1, 2, 3, 4, 5, 6.5)  # => 0000-01-02 03:04:05.0000065 -0600


# utc Metotu: Verilen bağımsız değişkenlere dayalı olarak yeni bir Time nesnesi döndürür; saat dilimi utc'dir.

Time.utc(2000)                  # => 2000-01-01 00:00:00 UTC
Time.utc(0, 1, 2, 3, 4, 5, 6.5) # => 0000-01-02 03:04:05.0000065 UTC


# at Metot: Epoch'tan bu yana geçen saniyelere göre yeni bir süre döndürür.

Time.at(Time.new)               # => 2021-04-26 08:52:31.6023486 -0500
Time.at(Time.new, in: '+09:00') # => 2021-04-26 22:52:31.6023486 +0900


# now Metotu: Geçerli sistem saatine göre yeni bir saat döndürür.

Time.now               # => 2009-06-24 12:39:54 +0900
Time.now(in: '+04:00') # => 2009-06-24 07:39:54 +0400


# +(plus) Metotu: Verilen saniye sayısı kadar artırılmış yeni bir süre verir.
# -(minus): Yeni bir zaman döndürür.
