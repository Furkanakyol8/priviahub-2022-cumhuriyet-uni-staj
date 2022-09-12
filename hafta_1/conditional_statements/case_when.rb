print "Notunuzu giriniz: "
sinav_notu = gets.chomp.to_i

case sinav_notu
when 0..49
  puts "Geçmez"
when 50..59
  puts "Geçer"
when 60..69
  puts "Orta"
when 70..84
  puts "İyi"
when 85..100
  puts "Pekiyi"
else
  puts "Geçersiz not!"  
end

