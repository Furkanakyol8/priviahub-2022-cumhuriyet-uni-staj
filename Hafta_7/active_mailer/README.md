# Action Mailer Nedir?

Action Mailer, postacı sınıflarını ve görünümlerini kullanarak uygulamanızdan e-posta göndermenizi sağlar.

- Terminale yazarak mailer'imizi oluşturalım.

``rails g mailer model_mailer`
oluşturduktan sonra aşağıdaki dosyalar oluşacaktır.

![resim_1](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_7/active_mailer/img/Resim_1.png)

- Sonrasında kullanıcının kayıtlı e-posta adresine bir e-posta gönderecek `welcome_email` adlı bir yöntem ekleyelim :

![resim_2](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_7/active_mailer/img/Resim_2.png)

`default` yöntemi gönderilen tüm e-postalar için varsayılan değerleri ayarlar.

`mail`, gerçek e-posta mesajını oluşturur. 

Mailer bir controller görevi görür, bu nedenle bu e-posta actionu tanımladığımız tüm örnek değişkenlerine e-postalar görünümünün içinden erişilebiliriz. MVC modelinin devreye girdiği yer burasıdır. E-postaları göndermek için kullanılacak e-posta adresi, yeni oluşan mailer içinde veya Application Mailer'dan devraldığı için Rails'in bizim için oluşturduğu Application Mailer'a eklenmelidir.

- Şimdi ise Controller' dan Mailer'ı çağıralım.

![resim_3](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_7/active_mailer/img/Resim_3.png)

Kullanmak istediğimiz değişkenler parametre olarak `.with` yöntemine geçirilebilir. Action Mailer, .deliver_now veya .deliver_later kullanılarak e-postaların şimdi veya daha sonra gönderilmesine izin verir. Deatyları için [link](https://guides-rubyonrails-org.translate.goog/action_mailer_basics.html?_x_tr_sl=en&_x_tr_tl=tr&_x_tr_hl=tr&_x_tr_pto=sc) bakabilirsiniz.

- Sırada config dosyasını düzenleme var. Bunu da rails uygulamasını Gmail'i kullanacak hale getirmek için yapıyoruz.

``` 
config/environments/development.rb
config.action_mailer.delivery_method = :smtp
config.action_mailer.default_url_options = { 
:host => '<your_url_here>', 
:protocol => 'http'
}
config.action_mailer.smtp_settings = {
:address => 'smtp.gmail.com',
:port => 601,
:user_name => <gmail_username>,
:password => <gmail_password>,
:authentication => 'plain',
:enable_starttls_auto => true
}
```




