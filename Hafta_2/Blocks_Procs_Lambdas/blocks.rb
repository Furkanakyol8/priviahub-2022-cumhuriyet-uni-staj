=begin
    Ruby de bloklar bir "do / end" ifadesine veya "{}"" parantezleri arasına alınır ve birden çok parametreye sahip olabilirler.
    Süslü parantezlerle yazılmış bloklar do end'e göre daha önceliklidir.
    Parametreler iki adet '|' işareti arasına yazılır.
    Bloklar nesne değildir, ancak nesne haline proc ve lambda getirilebilirler.
=end

#Süslü parantezler kullanılarak yazım şekli
arr = ["1", "2", "3"]
arr.collect! {|e| e += "0"}
puts arr.inspect

#do end kullanarak yazım şekli
arr = ["1", "2", "3", "4"]
arr.collect! do |e| 
  e += "!"
end
puts arr.inspect

=begin
call ile blok kod olarak yazmış olduğumuz kodu çağırırız.
Hem * hem de & varsa, & daha sonra gelir(*&block)
=end
def test(&block)
    block.call
end
test { puts "Hello World!"}


# yield anahtar sözcüğü kullanıldığında bloğun içindeki yani süslü parantez kısmı çalışır.
def blok
    puts "metot başladı"
    yield
    yield
    puts "metot bitti"
end
blok {puts "blok kod"}


def carpma
    yield 78/2
    yield "Berkay"   # yield anahtar sözcüğüne farklı veri tiplerinde değişkenler de gönderilebilir.
end
carpma { |a| puts a * 4}


# Blogumuzu parametre değeri vererek de kullanabiliriz.
def arithmetic(a, b)
    yield(a, b)
end
arithmetic(8,2){|a,b| puts "iki sayının çarpımı #{a*b}"}
arithmetic(8,2){|a,b| puts "iki sayının toplamı #{a+b}"}



