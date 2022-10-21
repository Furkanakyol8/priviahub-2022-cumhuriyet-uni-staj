# ACTIVE RECORD MIGRATIONS
Veritabanındaki model dosyalarımızı eşleştirmek için yeni bir migration dosyası
oluşturmamız gerekir.

![](images/migration1.png) <br>
bu komut ile birlikte Products tablosuna categorynin referansını ekleyeceğimizi söylüyoruz.
<br>
<br>
<br>
![](images/migrations3.png) <br>
db/migrate altında migration dosyamız oluştu.
<br>
<br>
<br>
![](images/migration2.png) <br>
Migration dosyamızın içeriği bu şekilde. (null bırakılamaz, foreign key mi? evet)
<br>
<br>
<br>
`rails db:drop`,`rails db:create`,`rails db:migrate` komutlarıyla veri tabanımızı sıfırlayıp tekrardan migrate ediyoruz.
<br>
<br>
<br>
![](images/migration4.png) <br>
rails console ekranımıza gelip, bir category modeli oluşturduktan sonra bir prodcut oluşturmak istediğimizde
category_id belirtmemiz gerekir. Eğer category_id boş bırakırsak yukarıda görüldüğü gibi "null bırakılamaz"
hatası verir.
<br>
<br>
<br>
![](images/migration5.png)
`category_id:1` ifadesini girdiğimizde product'ımızı id'si 1 olan categorye eşlemiş olur.