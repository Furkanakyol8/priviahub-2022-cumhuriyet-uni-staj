# compare_by_identity, compare_by_identity? Metotu: Bu metot ile, Hash'in key ve value'leri birbirine benziyor mu? Diye kontrol ederiz.

h = { "a" => 1, "b" => 2, :c => "c" }
h["a"] # => 1
h.compare_by_identity? # => false
h.compare_by_identity  # => {"a"=>1, "b"=>2, :c=>"c"}
h.compare_by_identity? # => true


# default= Metotu: Karşılığı olmayan keyler için varsayılan değer ataması yapılmışsa bunu bulmak için ya da varsayılan değeri atamak için kullanılır.

h = Hash.new(10)
h[:kullanıcı_yası]      # => 10
h                       # => {}
h.default               # => 10
h.default(:kullanıcı_agırlık) # => 10


# default_proc, default_proc= Metotu: Hash'e ait proc'u görmek için kullanırız. Yani Hash için varsayılan işlem prosedürünü tanımlamış olduk.

h = Hash.new { |hash, key| hash[key] = "User: #{key}" }
h.default_proc # => #<Proc:0x007feea39bbd80@-:7>
h[1] # => "User: 1"


# rehash Metotu: Bir hash'e key olarak Array verebiliriz. Sonrasında Array in ilk değerini değiştirdiğimizde olay patlar ve burada rehash durumu kurtarır.

a = [ "a", "b" ]
c = [ "c", "d" ]
h = { a => 100, c => 300 } # => {["a", "b"]=>100, ["c", "d"]=>300}
# Hash'inin keyleri nedir?
h.keys                     # => [["a", "b"], ["c", "d"]] 

h[a]                       # => 100
a[0] = "v"                 # => "v"
a                          # => ["v", "b"]
h[a]                       # => nil

h.rehash                   # => {["v", "b"]=>100, ["c", "d"]=>300}
h[a]                       # => 100
