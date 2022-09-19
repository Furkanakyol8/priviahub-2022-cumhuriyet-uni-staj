=begin
 Ruby’de döngümüzü istenilen değerden önce sonlandırmak için break durumunu kullanırız. 
 Ayrıca bazı durumlarda döngümüzün sonsuz döngüye girmesini engellemek amacı ile de kullanılır.
=end

x = 0
while true
    print "#{x} "
    x += 1
    brak if x > 5
end

# Döngümüzün çalışma şartı true olduğundan normalde sonsuz bir döngü olması beklenirken break şartı olarak x > 5 değerini girdiğimiz için x değerimiz 6 olduğunda döngü sonlandırılacaktır.