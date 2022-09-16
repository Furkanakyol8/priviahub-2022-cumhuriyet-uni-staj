=begin
    Proc nesnesi ile ismi olmayan kod blokları method haline getirilebilir. Blocks.rb içerisinde bloklara parametre olarak blok kod
    göndermeyi görmüştük. Bu blok kodlar anlık olarak yazıldıdğı için daha sonra kullanmak mümkün değildi. Ancak proc nesneleri 
    bu anlık kodları method haline getirilebilir.
    
    
=end

#Bir proc nesnesi oluşturma
proc_nesnesi = proc {puts "kodlar..."}
proc_nesnesi.call

proc_nesnesi = proc do
    puts "kodlar..."
end
proc_nesnesi.call



# proc nesneleri parametre de alabilir
merhaba = Proc.new do |isim|
    puts "Merhaba #{isim}"
end
merhaba.call "Furkan"



