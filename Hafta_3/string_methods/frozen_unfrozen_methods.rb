# Array'i kilitlemek için kullanılır. Yani freeze (dondurulmuş) bir Array'e yeni eleman eklenemez. 

a = ["Vesile", "Eren", "Nesibe", "Yasin"]
a.freeze
a << "Fazilet"  # Yeni isim eklenemez.

# Array'de buzlanma var mı yok mu anlamak için 'frozen' kullanırız.

a = ["Vesile", "Eren", "Nesibe", "Yasin"]
a.freeze  # => ["Vesile", "Eren", "Nesibe", "Yasin"]
a.frozen? # => true