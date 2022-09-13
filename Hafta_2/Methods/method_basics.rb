=begin
    
Method'lar "def" anahtar kelimesinden sonra methoda vermek istediğimiz isim yazılarak tanımlanır.
İhtiyaca göre parametreli veya parametresiz olarak tanımlanabilirler
Method gövdesine, methoda yaptırmak istediğimiz iş yazılır.
    
=end

def televizyonu_ac                  
    puts "televizyon açıldı.."
end
# televizyonu_ac methodu herhangi bir parametre belirtmediğimiz için sadece methodun ismini çağırdığımızda çalışacaktır.

def sms_gonder(numara, mesaj)
    puts "#{numara} no'lu kişiye sms gönderildi. Mesaj içeriği: #{mesaj}"
end
# sms_gonder methodu 'numara' ve 'mesaj' parametrelerini içerir.
# bu methodu çalıştırmak için numara ve mesaj parametrelerini girmemiz gerekir.

def selamla(isim = "Yabancı")
    puts "Merhaba #{isim}"
end
# bu örnekte ise ön tanımlı parametre içeren bir method oluşturduk.
# yani eğer isim parametresi girilmezse önceden tanımlanan 'yabancı' stringini parametre değeri olarak kabul edecektir.

def topla(*p)
    genel_toplam = 0
    p.each do |e|
        genel_toplam += e
    end
    puts genel_toplam
end
# topla methodunun parametresi olan '*p' bu parametrenin birden çok değer içerebileceğini belirtir.
# aynı tipteki verileri parametremize değer olarak göndermemiz gerekir.
# bu parametrelere emici parametreler de denir.
# topla methodunda '*p' parametresinin içine ne kadar sayı girersek girelim method toplama işlemini gerçekleştirecektir.

televizyonu_ac
sms_gonder(053000000, "Merhaba, bugün nasılsın?")
selamla
topla(1,2,4,5,7)
# parametresiz ve parametreli methodlar bu şekilde kullanılır.

