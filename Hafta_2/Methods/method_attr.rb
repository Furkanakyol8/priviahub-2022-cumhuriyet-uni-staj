
class Person
end

person = Person.new
person.name # => undefined method hatası alacağız. Çünkü reader ve writer metodlarımızı oluşturmadık.



# Methodlarımızı oluşturalım.

class Person
    def name
      @name
    end
  
    def name=(str)
      @name = str
    end
end
  
  person = Person.new
  person.name = 'Furkan'
  person.name # => "Furkan"

# Methodlarımızı oluşturduk. Artık sorunsuz bir şekilde çalışacaktır fakat bunu yapmanın çok daha kolay bir yöntemi var.


# attr_reader ve attr_writer kullanarak sürekli method oluşturmak zorunda kalmayız. 
class Person
    attr_reader :name
    attr_writer :name
end



# Hem writer hem de reader oluşturmak yerine ikisini de kapsayan 'attr_accessor' kullanabiliriz.
class Person
    attr_accessor :name  # => attr_accessor sayesinde name özelliğine classın dışından erişilebilmesini ve yazılabilmesini sağladık
  
    def greeting
      "Hello #{@name}"
    end
end
  
person = Person.new
person.name = "Furkan"
person.greeting # => "Hello Furkan"

# Temel olarak attr_reader, attr_writer, attr_accessor kullanımı bu şekildeydi.



# Şimdi de Bir filmin içerisindeki aktörleri sorgulamamızı sağlayan bir 
class Film  # Film isimli classımızı oluşturduk.
    attr_accessor :title, :director, :stars     # attr_accessor kullanımıyla özelliklerimizin okunmasına ve yazılmasına izin verdik.
    def initialize(title,director,stars)        
        @title = title
        @director = director    # özelliklerimizi gönderdiğimiz değerlerle eşitledik.
        @stars = stars
    end

    def isActorIncluded(actorName)  # isActorIncluded methoduyla sorgulama işlemimizi gerçekleştireceğiz.
        isIncluded = false      

        for actor in stars      # actor değişkenini stars dizisi içerisinde gezdiriyoruz.
            if actor == actorName       
                isIncluded = true       # eğer girdiğimiz aktör ismi stars içerisinde varsa True değer döndürüyoruz.
            end
        end
        if isIncluded == true
            puts "Sorgulanan aktör filmde bulunuyor."   
        else                                                     # bulunma durumuna göre çıktılarımızı hazırlıyoruz.
            puts "Sorgulanan aktör filmde bulunmamaktadır."
        end
    end
end


film1 = Film.new("Interstellar","Cristopher Nolan",["Matthew McConaughey","Jessica Chastain","Anne Hathaway"])  # Film classından film1 isimli nesne oluşturduk ve
                                                                                                                # özelliklerimizi belirledik.
film1.isActorIncluded("Anne Hathaway") # => Sorgulanan aktör filmde bulunuyor.


