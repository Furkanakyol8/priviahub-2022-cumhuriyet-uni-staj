=begin
 G/Ç, Girdi/Çıktı ( Input/Output ) kısaltmasıdır.
 Ruby'de,
    - Dosya okuma/yazma.
    - Ekrana metin yazdırma / Bilgi okuma.
    - Ağ soketleri. ( biraz da olsa )
  işlerinden bahsediyor olacağız.
=end
 
#Puts
#Puts yöntemi muhtemelen en yaygın G/Ç yöntemidir.Ekrana bir şey yazdırmak için kullanılır.
isim = "Vesile"
puts isim

#Print
#Print yöntemi puts'a benzer, ancak sonuna yeni bir satır eklemez. İmleci aynı satırda bırakır.
print "Ruby öğrenelim!"

#Putc
#Puts ve print yöntemine benzer şekilde çalışır, ancak her seferinde bir karakter yazdırır.
mesaj = "Merhaba Ruby!"
putc mesaj #çıktı M olacaktır.

#Gets
#STDIN adı verilen standart ekrandan kullanıcıdan herhangi bir girdi almak için kullanılabilir.
puts "Yaşınızı girin: "
yas = gets " #{yas} yaşındasınız"

#Dosyaları Açma ve Kapatma
#Şimdi gerçek veri dosyalarıyla nasıl işlem yapılacağına bakalım. Bundan önceki komutlar temeldi ancak bazen yetersiz kalabiliyorlar.

#File.New()
#Dosyalarla çalışırken ilk kullanışlı yöntem new yöntemidir. Bu, belirtilen dosya adı ve modu ile yeni bir dosya nesnesi oluşturur.
f = File.new(‘dosyadi’, ‘modu’)

#Ruby, çeşitli dosya modlarını destekler. Bunlar şunları içerir:
#r – Salt Okunur Modu
#w – Sadece Yazma Modu
#r+ – Okuma-Yazma Modu
#w+ Okuma-Yazma modu
#a – Dosya varsa yazma modu ve yeni veri ekleme; değilse, dosya oluşturun ve verileri ekleyin.
#a+ – “a” ile aynıdır ancak Okuma-Yazma modunu kullanır.
f = File.new("new.txt", "a+") #yeni.txt adında ve Okuma-Yazma moduyla yeni bir dosya nesnesi oluşturuyoruz.
f.syswrite("Yeni oluşturuldum") #syswrite yöntemini kullanarak dosyaya yazıyoruz
f.close() # son olarak dosyayı kapatıyoruz.

#File.Open()
#Yeni bir dosya nesnesi oluşturmak ve bu dosya nesnesini bir dosyaya atamak için File.open yöntemini kullanırız. Ancak, File.open ve File.new yöntemleri arasında bir fark var. Aradaki fark, File.open yönteminin bir blokla ilişkilendirilebilmesidir, ancak aynısını File.new yöntemini kullanarak yapamayız.
f = File.open("new.txt") #mevcut çalışma dizininde mevcut bir dosyayı açmak için open yöntemini kullanıyoruz.
content = f.read #Açıldıktan sonra dosya içeriğini okuyabiliyoruz.
puts content

#File.rename()
#Ruby, bir dosyayı okumanın ve yazmanın yanı sıra, yeniden adlandırma yöntemini kullanarak dosyayı yeniden adlandırmak da dahil olmak üzere diğer işlemleri gerçekleştirmenize izin verir.
f = File.rename("new.txt", "renamed.txt") #Yukarıdaki yöntem, new.txt dosyasını renamed.txt olarak yeniden adlandırdı.

#File.Delete()
#Bir dosyayı silmek için, silme yöntemini kullanabilir ve argüman olarak dosya adını belirtebiliriz.
puts "#{File.delete("renamed.txt")} deleted!"

#File.dirname()
#dosya adını eklemeden dosyanın yolunu almanızı sağlar.
f = File.dirname("/var/log/lastlog")
puts f 

#File.exists?
#Bir dosyanın var olup olmadığını kontrol etmek için file.exists? yöntemi kullanılır. Değer varsa Boolean true, yoksa false döndürür.
puts File.exists?("/etc/passwd")
true

#IO.readlines Yöntemi
#Bu yöntem, dosyanın içeriğini satır satır döndürür.

arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1] #Bu kodda, arr değişkeni bir dizidir. input.txt dosyasının her satırı, arr dizisindeki bir öğe olacaktır. Bu nedenle arr[0] ilk satırı içerecek, arr[1] ise dosyanın ikinci satırını içerecektir.

#IO.foreach Yöntemi
#Bu yöntem ayrıca çıktıyı satır satır döndürür. foreach yöntemi ile readlines yöntemi arasındaki fark, foreach yönteminin bir blokla ilişkilendirilmiş olmasıdır. Ancak readlines yönteminin aksine foreach yöntemi bir dizi döndürmez.
IO.foreach("input.txt"){|block| puts block} #dosya test satırının içeriğini değişken bloğuna satır satır iletecek ve ardından çıktı ekranda görüntülenecektir.


#Ruby'deki Dizinler
#File sınıfı dosyaları işlerken, dizinler Dir sınıfıyla işlenir.
#Bir Ruby programı içinde dizini değiştirmek için Dir.chdir'i kullanırız.
Dir.chdir("/usr/bin") #geçerli dizini /usr/bin olarak değiştirir.

#Dir.pwd ile mevcut dizinin ne olduğunu öğrenebilirsiniz.
#Dir.entries kullanarak belirli bir dizindeki dosyaların ve dizinlerin bir listesini alabilirsiniz.

#Dizin Oluşturma
#Dir.mkdir dizin oluşturmak için kullanılır.
Dir.mkdir("mynewdir")

#Dizin Silme
#Dir.delete bir dizini silmek için kullanılabilir. Dir.unlink ve Dir.rmdir tam olarak aynı işlevi yerine getirir ve kolaylık sağlar.
Dir.delete("testdir")
 