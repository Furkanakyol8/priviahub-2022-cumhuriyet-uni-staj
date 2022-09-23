# push, append,<< Metotları: 

a << "Alya" # => ["Ebrar", "Vesile", "Nesibe", "Alya"]
a.push("Eren").push("Hilal")  # => ["Uğur", "Yeşim", "Ezel", "Ömer", "Eren", "Tunç", "Suat"]


# prepend ve unshift Metotları: Öne ekleme yaparlar.

"dünya".prepend("Merhaba ") # => "Merhaba dünya"

arr = [1, 2, 3, 4]
arr.unshift(0) #=> [0, 1, 2, 3, 4]

# insert Metotu: Array'de istediğiniz bir noktaya eleman eklemek için kullanılır. İlk parametre index diğer parametre/ler de eklenecek elemanlar.

a = ["Uğur", "Yeşim", "Ezel"]
a.insert(1, "Ömer") # => ["Uğur", "Ömer", "Yeşim", "Ezel"]
a.insert(1, "Ahmet", "Ece", "Eren") # => ["Uğur", "Ahmet", "Ece", "Eren", "Ömer", "Yeşim", "Ezel"]


# concat Metotu: Array sonuna Array eklemek için kullanılır.

a = [1, 2, 3]
a.concat([4, 5, 6])
a  # => [1, 2, 3, 4, 5, 6]


# fill Metotu: Array'in içini ilgili değerle doldurmak için kullanılır. İşlem sonucunda orijinal Array'in değeri değişir. Yani ne ile fill ettiyseniz Array artık o değerlerdedir.

a = [1, 2, 3, 4, 5]
a.fill { |i| i * 5 }     # => [0, 5, 10, 15, 20]
a                        # => [0, 5, 10, 15, 20]


# replace Metotu: Array’in içini, diğer Array’le değiştirir. Aslında Array’i başka bir Array’e eşitlemek gibidir. Eleman sayısının eşit olup olmaması hiç önemli değildir.

a = ["Vesile", "Yeşim", "Ebrar", "Eren"]
a.replace(["Yasin", "Nesibe"]) # => ["Yasin", "Nesibe"]
a                         # => ["Yasin", "Nesibe"]


# reverse! Metotu: Ters çevrilmiş öğeleriyle değiştirir.

a = [1, 2, 3, 4, 5]
a.reverse! # => [5, 4, 3, 2, 1]


# rotate! Metotu: Döndürülmüş elemanları ile değiştirir.

a = [:foo, 'bar', 2, 'bar']
a.rotate! # => ["bar", 2, "bar", :foo]


# shuffle! Metotu: Öğeleri rastgele sırada değiştirir.

a = [1, 2, 3] #=> [1, 2, 3]
a.shuffle!    #=> [2, 3, 1]
a             #=> [2, 3, 1]


# sort! Metotu: Belirli bir blok veya dizi tarafından belirlenen şekilde sıralanmış öğeleriyle değiştirir.

a = 'abcde'.split('').shuffle
a # => ["e", "b", "d", "a", "c"]
a.sort!
a # => ["a", "b", "c", "d", "e"]


# sort_by! Metotu: Belirli bir blok tarafından belirlendiği şekilde sıralanmış öğeleriyle değiştirir.

a = ['aaaa', 'bbb', 'cc', 'd']
a.sort_by! {|element| element.size }
a # => ["d", "cc", "bbb", "aaaa"]