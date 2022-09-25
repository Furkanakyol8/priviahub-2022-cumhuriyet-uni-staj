# '[]' Metotu: İçerisine key'i yazıp sorguladığımızda karşılığını verir.

h = {foo: 0, bar: 1, baz: 2}
h[:foo] # => 0


# assoc ve rassoc Metotları: Elemanları Array olan bir Array içinde, ilk değere göre yakalama yapmaya yarar. rassoc ise ikinci elemanına bakar.

a = ["harfler", "a", "b", "c"]
b = "foo"
t = [a, b]
t # => [["harfler", "a", "b", "c"], "foo"]

t.assoc("foo")  # => nil
t.rassoc("a")   # => ["harfler", "a", "b", "c"]


# dig Metotu: Belirli bir anahtar ve ek bağımsız değişkenler tarafından belirtilen iç içe nesnelerdeki nesneyi döndürür.

h = {foo: {bar: {baz: 2}}}
h.dig(:foo) # => {:bar=>{:baz=>2}}
h.dig(:foo, :bar) # => {:baz=>2}


=begin
    
fetch ve fetch_values Metotları: 
fetch, Hash içinden sorgu yaparken kullanılır. Eğer olmayan key çağırırsanız exception oluşur. Bu method güvenli bir yöntemdir.
fetch_values, verilen anahtarlarla ilişkili değerleri içeren diziyi döndüren bir Hash sınıfı yöntemidir.    

=end

h = {:user => "vesile", :password => "123456"}
puts h.fetch(:user) # "vesile"
puts h.fetch(:email)

KeyError: key not found: :email

a = { "a" => 100, "b" => 200 }
b = {"a" => 100}
puts "Hash a fetch_values form : #{a.fetch_values("a")}\n\n" # => Hash a fetch_values form : [100]
puts "Hash b fetch_values form : #{b.fetch_values("a")}\n\n" # => Hash b fetch_values form : [100]


# key Metotu: Value’den key’i bulmak için kullanılır. Eğer key’i olmayan bir value kullanırsanız sonuç nil döner. 

h = {:user => "vesile", :password => "123456"}
h.key("vesile")   # => :user
h.key("foobar") # => nil


=begin

keys, values, values_at Metotları:  
keys ile Hash’e ait key’leri,
values ile sadece key’lere karşılık gelen değerleri, 
values_at ile verdiğimiz key’lere ait değerleri alırız.

=end

h = {:user => "vesile", :password => "123456", :email => "vesile@foo.com"}
h.keys                        # => [:user, :password, :email]
h.values                      # => ["vesile", "123456", "vesile@foo.com"]
h.values_at(:user, :password) # => ["vesile", "123456"]





