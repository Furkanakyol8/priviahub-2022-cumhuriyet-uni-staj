# Genel mantık olarak if-else yapısı istenilen şartın gerçekleşmesi durumunda yapılması istenen ya da istenen durumun gerçekleşmediği durumda yapılması istenen yerlerde kullanılır.
    
a = 22
if a < 30
    puts "Merhaba"
else
    puts "Güle Güle"
end

=begin
 
Değer 30'dan küçükse ekrana merhaba yazar. Değilse(else) güle güle yazar.
Else yapısı if şartı sağlandığındaki çalışan kodlardan hemen sonra yerini alır ve end den önce gelir. Şartlar sağlanmadığında if kodlarına bakmaksızın else yapısında bulunan kodları çalıştıracaktır
 
=end

print "Hoşgeldiniz ! Yaşınızı giriniz: "
yas = gets.chomp.to_i
     if (yas > 18) 
    puts "Programa giriş sağlandı."
   elsif (yas == 17)
    puts "Giriş için ebeveyn onayı gerekli!"
   else
    puts "Giriş sağlanamadı."
end

=begin

Elsif de olay şöyle, if koşulu gerçekleşmezse şayet elsif satırı kontrol edilir. Eğer bu satırda istenilen durum gerçekleşirse istenilen kodlar çalışır. Bu durumda da istenilen gerçekleşmezse else yapımızda bulunan kodlar ile devam ederiz. 
İstenilen miktarda elsif şartı girilebilir

=end