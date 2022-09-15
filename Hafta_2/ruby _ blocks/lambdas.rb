lamb = lambda {} # yazım şekli 1
lamb = ->(){} # yazım şekli 2

#Örnek yapalım.
carp = ->(e1, e2) {e1*e2}
puts carp.call 3,5

#proc ve lambda karşılaştırması için bir örnek yapalım.
def metot1
    p = Proc.new do
        return "proc içi dönüş"
    end
    p.call
    return "metot 1 dönüş"
end
#proc nesnesinin içinden değer dönüş yapıyor ama sonrası işlemiyor.
#proc eksik parametreleri nil olarak değerlendirir.

#lambda
def metot2
    l = ->() {return "proc içi dönüş"}
    l.call
    return "metot 2 dönüş"
end

puts metot1, metot2
#lambda da proc içi dönüşü bitiryor ve en son metot 2 dönüşü yazdırıyor.
#lambdaya eksik parametre gönderilirse hata verir.