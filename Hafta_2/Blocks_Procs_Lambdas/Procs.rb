=begin
proc nesnesi ile ismi olmayan kod bloklarını metot haline getirebiliriz
proc nesnesi ile işaret edilen kod parçacığı program içinde farklı noktalarda tekrar tekrar kullanılabilir
=end

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
merhaba.call "Berkay"