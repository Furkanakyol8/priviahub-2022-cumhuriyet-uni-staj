# Action Mailer
## Action mailer oluşturma
```
 bin/rails generate mailer User
create  app/mailers/user_mailer.rb
create  app/mailers/application_mailer.rb
invoke  erb
create    app/views/user_mailer
create    app/views/layouts/mailer.text.erb
create    app/views/layouts/mailer.html.erb
invoke  test_unit
create    test/mailers/user_mailer_test.rb
create    test/mailers/previews/user_mailer_preview.rb
```

```
# app/mailers/application_mailer.rb
class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout 'mailer'
end
```

```
# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
end
Copy
```

- Eğer kullanıcı oluşturmak istiyorsak `app/mailers` içinde kendi dosyamızı oluşturabiliriz.
Beklenen Görünüm:
```
class MyMailer < ActionMailer::Base
end
```
## Mailer düzenleme
`app/mailers/user_mailer.rb` boş bir posta gönderici içeriyor:
```
class UserMailer < ApplicationMailer
end
```
Kullanıcının kayıtlı e-posta adresine bir e-posta gönderecek olan Welcome_email adında bir yöntem ekleyelim:
```
class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
Copy
```
Oluşturma ve anlatım kısmını halletik. Eğer isterseniz tüm detaylar için
[link](https://guides.rubyonrails.org/action_mailer_basics.html)