class Kamyon
    @lastik_sayisi = 10
    
    def self.kac_lastigi_var?
      puts "#@lastik_sayisi adet."
    end
    
    def self.lastik_ekle
      @lastik_sayisi += 1
    end
end
  
class Kamyonet < Kamyon   #Kamyonet sınıfına Kamyon sınıfını miras olarak verdik.
    @lastik_sayisi = 4    #Daha önce 10 olarak tanımladıgımız lastik_sayisi'nı 4 olarak tanımladık yani anlık değişkenler bulundugu sınıf içerisinde geçerlidir.
end
  
Kamyon.lastik_ekle()
Kamyonet.lastik_ekle()
  
Kamyon.kac_lastigi_var?()
Kamyonet.kac_lastigi_var?()