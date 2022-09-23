=begin
lambda'nın iki farklı kullanım şekli vardır bunlar "lambda" veya "->" özel ifadeleriyle tanımlanabilirler.
=end
  
topla = ->(e1, e2) {e1+e2}
puts topla.call 3,5

=begin
Proc nesnesi oluşturmak için Proc.new kullanılır. -lambda, proc'un özel halidir. Aralarında cok küçük bir fark var.

Lambda ile proc arasındaki fark bir metod içerisinde return kullanıldığında ortaya çıkmaktadır.
Lambda kendini metodun bir parçası olarak görmektedir. Ama proc ise metodun asıl kendisi olarak görmektedir, bu nedenle proc return gördüğü zaman direk metodtan çıkmaktadır.
Eger metodun direk return den sonra cıkmasını istiyorsak Proc kullanılır. 
Kısacası return olmadığı sürece ikiside aynı şeylerdir.
=end

def metot1
  p = Proc.new do
    return "proc içi dönüş"
  end
  p.call
  return "metot 1 dönüş"
end
#proc eksik parametreleri nil olarak değerlendirir.

def metot2
  l = lambda{return "proc içi dönüş"}
  l.call
  return "metot 2 dönüş"
end
#lambda'ya eksik parametre gönderilirse hata verir
puts metot1, metot2