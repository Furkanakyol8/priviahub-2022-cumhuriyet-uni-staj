# Scaffold yapısı nedir?

Rails projelerimizin iskeletini otomatik olarak oluşturan yapıya "Scaffolding" denir.
Örneğin kitaplarla ilgili bir web sitesi oluşturacaksak `rails g scaffold books` komutu
ile birlikte otomatik olarak; <br>
- Books Controller <br>
- Books Model <br>
- app/views/books <br>
- roustes.rb --> resources :books <br>

Dosyaları oluşturulacaktır. <br>
<br>
Eğer bu iskelet yapımızı silmek istersek oluşturduktan hemen sonra `rails d scaffold books`
komutunu girmemiz yeterlidir. 'd' harfi destroy anlamına gelmektedir.
<br>
<br>
İskelet yapımızı kullanmaya başlamadan önce veritabanı şemamızı güncellemek için migrate
işlemlerini gerçekleştirmemiz gerekir. (`rails db:migrate`)
<br>
Bu aşamaya kadar hiç bir problem çıkmadıysa projemizi sağlıklı bir iskelet yapısıyla başlatabiliriz :)
<br>
`rails server` ---> `localhost:3000/books`