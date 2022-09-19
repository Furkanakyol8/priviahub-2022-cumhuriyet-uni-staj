=begin
    
if-elsif-else işlemlerinin bir başka alternatifi olarak case işlemi kullanılır.
Ruby'de case işlemi çoklu işlemi destekler.    
    
=end

case a
 when 0..4 then puts "#{a}, 5 ten küçüktür."
 when 5 then puts "#{a}, 5 e eşittir."
 when 5..10 then puts "#{a}, 5 ten büyüktür."
 else puts "istenmeyen değer #{a} " #a 10 dan büyük negatif
end
