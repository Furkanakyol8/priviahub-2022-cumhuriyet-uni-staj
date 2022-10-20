# Active Job nedir?

Active Job arka plan görevlerini yönetmek için kullanılır. Peki arka plan görevleri nelerdir? Arkaplan görevleri bir işlemin durmasına rol açmadan, eş bir çizgide yürüyerek rol almasıdır. E-mail gönderilmesi buna çok güzel bir örnektir. Örneğin kullanıcı sistemimize kayıt olmak için kayıt ol formunu doldurduğunda onaylama e-maili yollanıyor olsun. Kullanıcı onay tuşuna bastığında e-mail gönderme işlemini direkt olarak işleme alırsak, e-mail gönderilinceye kadar kullanıcı yükleme ekranında bekler. Fakat eğer arka plan görevi olarak çalışması sağlanırsa işlem bir kuyruğa alınır ve sayfa direkt yüklenir.

Active Job, zamanlanmış olarak çalışacak görevleri tanımlayan, bu görevlerin kuyruk servislerine (çoğunlukla III. parti) aktarılmasından sorumlu bir framework yani uygulama çatısıdır.

Active Job’un ana amacı; Kuyruk(queue) amacıyla kullandığımız III. parti servisi değişse dahi daha önceden yazmış olduğumuz görevlerin yani job’ların baştan yazımının önüne geçmektir.

Active Job sayesinde görevlerimizi yazabilir ve istediğimiz kuyruk servisi kullanabilir, değiştirebiliriz.

## Kuyruk Servisleri

Rails’de varsayılan olarak kuyruk mekanizması RAM üzerinde tutulacak şekildedir. Herhangi bir elektrik kesintisinde ya da RAM’de oluşacak bir sorunda kuyruktaki tüm görevler yok olacaktır.

Bu durumda III. parti bir kuyruk servisi kullanmak mantıklı olabilir. Bu servislere **Sidekiq**, **Resque**, **Delayed Job** örnek verilebilir. Servislerin listesine [link](https://edgeapi.rubyonrails.org/classes/ActiveJob/QueueAdapters.html) bakılabilir. 

Kuyruk servisini ayarlamka için ***Config*** dosyasında belirtmemiz yeterli olacaktır.

`config.active_job.queue_adapter = :sidekiq`

Ya da görev bazlı olarak seçeceğimiz servisi değiştirebiliriz. Yani config dosyasında varsayılan olarak ayarlanan servisin üzerine yazmış oluruz. Örneğin haftalık bülten görevi için “sidekiq” kullanırken, ödeme hatırlatıcı e-postaların atılması için “resque” kullanabiliriz.

![resim_1]()

![resim_2]()

Şimdi biz **sidekiq** kullanarak devam edeceğiz. Bunun için Gemfile’e sidekiq’i eklemeli ve routes dosyasını da aşağıdaki gibi ayarlamalısınız.

`gem 'sidekiq', '~> 5.2', '>= 5.2.7'`

![resim_3]()

### Kullanıcı kayıt olduğunda arka planda e-posta göndermek istersek:

- Bir kullanıcı oluşturalım. (Terminalden yazıyoruz.)

`rails generate scaffold User name:string email:string`

- e-posta gönderebilmek için mailer oluşturalım.

`rails generate mailer UserMailer`

Şimdi oluşan mailer dosyasına **welcome** diye bir method ekleyelim.

![resim_4]()

- Model’e de bir callback ekleyelim. Artık kullanıcı kayıt olduğunda arka plan görevi olarak bir e-posta atıyoruz.

![resim_5]()

Burada deliver_later ifadesi oldukça önemli. Böyle diyerek işlemin bir görev olarak kuyruğa girmesini sağlıyoruz. Eğer deliver_now deseydik kuyruğa girmeden direkt olarak işleme alınacaktı.

![resim_6]()


## Job Oluşturma

Bir kullanıcı olsun ve satın aldığı bir abonelik mevcut olsun. Kullanıcı belirli bir tarihe kadar abone olup parasını ödemiş olsun. O tarihte artık pasif hale getirilmesi gerekir. Bunun için bir job oluşturalım.

`rails generate job users_clean`

![resim_7]()

`GuestsCleanupJob.perform_later(@user)`
Bunu tetiklemek için

`GuestsCleanupJob.set(wait_until: @user.expire_date).perform_later(@user)`
Bizim tetikleme tarihi belirli bir tarih olduğu için.

### Job'lara callbacks eklenmesi

Job'lara da aynı modellerde yaptığımız gibi callback eklenebilir.

![resim_8]()

Diğer callback’ler de aynı model’deki gibidir.
- before_enqueue

- around_enqueue

- after_enqueue

- before_perform

- around_perform

- after_perform







