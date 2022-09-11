# Girilen sayının 10 büyük, küçük veya eşit olduğunu ekrana yazdıralım

puts "Bir Sayı Giriniz: "
sayi = gets.chomp.to_i

if (sayi < 10)
    puts "Girilen sayı 10'dan küçüktür."
    
elsif (sayi == 10)
    puts "Girilen sayı 10'a eşittir."
else
    puts "Girilen sayı 10'dan büyüktür."
end 