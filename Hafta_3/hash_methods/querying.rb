# any? Metotu: Array'in tüm elemanlarından biri false ya da nil dönmezse sonuç true olur.

h = {foo: 0, bar: 1, baz: 2}
h.any?([:bar, 1]) # => true
h.any?([:bar, 0]) # => false


# compare_by_identity? Metotu: Hash’in key ve value’leri birbirine benziyor mu? sorusunun yanıtını alırız.

h = { "a" => 1, "b" => 2, :c => "c" }
h["a"] # => 1
h.compare_by_identity? # => false


# default Metotu: Karşılığı olmayan keyler için varsayılan değer ataması yapılmışsa bunu bulmak için ya da varsayılan değeri atamak için kullanılır.

h = Hash.new(10)
h[:user_age]            # => 10
h                       # => {}
h.default               # => 10
h.default(:user_weight) # => 10


#  default_proc Metotu: Daha sonra, önceden tanımladığımız bu prosedürü değiştirmek istersek bu metotu kullanıyoruz.

h = Hash.new { |hash, key| hash[key] = "User: #{key}" }
h.default_proc # => #<Proc:0x007feea39bbd80@-:7>
h[1] # => "User: 1"

h.default_proc = proc do |hash, key| # Yeni prosedür veriyoruz.
    hash[key] = "hello #{key}"
  end
  h # => {1=>"User: 1"}
  h[2] # => "hello 2"
  h # => {1=>"User: 1", 2=>"hello 2"}


# empty? Metotu: Hash’in içinde eleman var mı yok mu? sorusunun cevabını alırız.

{:user => "vesile", :password => "123456", :email => "vesile@foo.com"}.empty? # => false
{}.empty? # => true


# eql? Metotu: Hash içinde key’lerin sırası eşitlik kontrolünde önemli değildir. İçerik önemlidir. Eşitlik kontrolü için kullanılırlar.

h1 = { "a" => 100, "c" => 200 }
h2 = { 70 => 350, "x" => 22, "y" => 11 }
h3 = { "y" => 11, "x" => 22, 70 => 350 }


h1.eql?(h2)  # => false
h2.eql?(h3)  # => true


# hash Metotu: Integer hash kodunu döndürür. 

h1 = {foo: 0, bar: 1, baz: 2}
h2 = {baz: 2, bar: 1, foo: 0}
h2.hash == h1.hash # => true


# has_value? - value? Metotu: Hash'in içinde ilgili key var mı yok mu diye bakarız.

h = {:user => "vesile", :password => "123456", :email => "vesile@foo.com"}

h.value?("vesile")       # => true
h.has_value?("vesile")   # => true

h.value?("vesile")       # => true


# include?, has_key?, member?, key? Metotları: Yine Hash'in içinde ilgili key var mı diye bakarız.

h = {:user => "vesile", :password => "123456", :email => "vesile@foo.com"}
h.key?(:user)          # => true
h.has_key?(:user)      # => true

h = {:user => "vesile", :password => "123456", :email => "vesile@foo.com"}
h.include?(:user)        # => true
h.member?(:user)         # => true


# length, size Metotları: Hash’in boyunu / uzunluğunu verir.

h = {:user => "vesile", :password => "123456"}
h.length # => 2
h.size   # => 2
