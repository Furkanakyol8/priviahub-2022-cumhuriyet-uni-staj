#metotlarımızı def ifadesi ile tanımlar ve blok sonuna end koyarız.
#parametre almayan Merhaba isimli bir metot yazalım.
def merhaba
    puts " Merhaba çalışmama hoşgeldiniz "
end


#metotumuzu çalıştırmak için metot adını varsa parametrelerini yazıyoruz.
merhaba()


#Şimdi kullanıcıdan ismini isteyip ismini Hosgeldin metotuna gönderek mesaj veren programı yazalım.
def hosgeldin(isim)
    print "Hoşgeldin #{isim}/n"
end

print "Adınızı giriniz: "
ad=gets.chomp
Hosgeldin(ad) 
#metotumuza ad değişkeni parametre olarak tanımladık ve kullanıcıdan aldığımız isme hoşgeldin dedik.
#/n yeni satır karakteridir. Selamlama mesajını iki satıra böler.
#gets sonunda bir satır sonu da dahil olmak üzere bir metin satırı alır. gets bu metin satırını bir dize değeri olarak döndürür.chomp ise satır sonunu kaldırır.


#Şimdi toplama işlemi yaptıran metot yazalım.
def topla(a,b)
    a+b
end
    print "Toplam: ", topla(2,3), "/n"


#3 tane parametre alan çarpma metotu yazalım. c=1 ifadesi eğer 3.parametre metotta girilmezse varsayılan olarak 1 atanacağı anlamına gelmektedir.
def carp(a,b,c=1)
    print "/nÇarpım: ", a*b*c
end
 carp(3,4,5)
 carp(5,3)
 puts


 #eğer parametre sayısı belirsiz ve kullanıcının eklediği parametre kadar işlem görülecekse * ifadesi ile sonsuz parametre alan metot yazalım.
 def topla(*sayilar)
    topla=0
    sayilar.each{|sayi|topla=topla+sayi}
    return topla #return ile topla değişkenini döndürüyoruz.
 end
 print "Toplam: ", topla(53,4,56,99,255,17,885,77,35,41)
 puts


 #vize ve final notu istediğini diziler yardımı ile fonksiyona gönderen ve kullanıcıya soruyu soran ve cevabını isteyen fonksiyonu yazalım.
 def notlar(sorular) #sorular parametresini dizi olarak göndereceğiz.
    cevaplar=[] #soruların ceavplarını buraya kaydedeceğiz.

    sorular.each do |soru| #sorular dizisinin her sorusunu
        print "#{soru}: " #ekrana yazdırarak sor.
        cevaplar.push(gets.chomp.to_i) #kullanıcın girdiği her cevapta /n ifadesini chomp ile sil ve to_i ile tam sayıya çevirip push fonksiyonu ile cevaplar dizisinin son elemanı olarak kaydedelim.
    end
    cevaplar()
end
vize,final,ortalama=notlar(["Vize Notunuz: ", "Final Notunuz: "])
print "Ortalamanız: " ,(vize.to_f*0.4 + final.to_f*0.6)
puts


#Örnek metot ve sınıf metotları olmak üzere 2 çeşit metot türü vardır.
#İlk olarak örnek metotları inceleyelim. Örnek metotlarda sınıfımızın örneğini oluşturup, örnek üzerinden ulaşabiliriz.
class Mesaj
    def selam(isim)
        puts "Merhaba #{isim}"
    end
end
mesaj=Mesaj.new #Sınıfımızın mesaj adında örneğini oluşturduk.
mesaj.selam("Vesile Yavuz") #Nesnemizin üzerinden selam metotuna ulaştık.
#Mesaj.selam("isim") şeklinde direkt sınıf üzerinden erişemeyiz. Bu eriş şekli sınıf metotları için geçerli olur.


#Şimdi aynı örneği sınıf metotları üzerinden inceleyelim.
class Mesaj
    def self.selam(ad)
        puts "Merhaba #{ad}"
    end 
end
Mesaj.selam("Vesile Yavuz") #Direkt sınıf üzerinden ulaşmak için metotların isimlerine ön ek olarak self. ekliyoruz
