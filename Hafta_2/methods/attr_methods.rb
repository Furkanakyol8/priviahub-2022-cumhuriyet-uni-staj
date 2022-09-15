#attr_reader, değişkenin değerine erişmeyi sağlar. 
#attr_writer, değişkenin değerinin değiştirilmesi olarak tanımlanır. 
#attr_accessor ise attr_reader ve attr_writer alt alta yazıldığında çok fazla benzer kod satırı olacağından ve aslında fazladan kod satırıda olacağından ikisini bir araya toplayan bir metotdur.
#Basit bir örnekle inceleyelim.
class Product
  Product_types = ['pen', 'computer', 'game']

  def initialize name
    @name
    
  end

  def name=(str)
    @name = str
  end
    
  end

  #Bu şekilde tanımlamalar yapılmaz çünkü bu çok fazla kod demektir.Bunun yerine kodu şöyle düzenleriz.
  class Product
    Product_types = ['pen', 'computer', 'game']

    attr_reader :name
    attr_writer :name #bu iki kodla değişkenin değerine erişip onu değiştirebiliriz.

    #Yukarıda kullandığımız iki satırıda ezen bir komut var bu da attr_accessor. Yani fazla koddan yine kurtulmuş olacağız.
    class Product
      Product_types = ['pen', 'computer', 'game']

      attr_accessor :name, :price
    end
    #Yani pek çok özniteliğe sahip olsaydı ve bunların hepsini tek tek tanımlamamız gerekseydi bu çok zor olurdu. Ruby'de işimizi kolaylaştırmak için böyle bir metot oluşturmuş diyebiliriz.

  

