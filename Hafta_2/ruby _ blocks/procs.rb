#Proc ile de bir kod bloğu işaret edilebilir. 
#Proc yeniden kullanılabilirliği mümkün kılar.
#proc nesnesi ile işaret edilen kod parçacığı program içinde farklı noktalarda tekrar tekrar kullanılabilir.

#proc yazımı
def proc_deneme
    ornek = Proc.new { return "Merhaba!" }
    ornek.call
    return "Hoşcakal!"
  end


proc_nesnesi = proc {puts "kodlar"}
proc_nesnesi.call

proc_nesnesi = proc do
    puts "kodlar"
end
proc_nesnesi.call

merhaba = Proc.new do |isim|
    puts "Merhaba #{isim}"
end
merhaba.call "Vesile"

puts [5,4,6,4,5,6,3,2,1,7,8,9].inject(&:+)