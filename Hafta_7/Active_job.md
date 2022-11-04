## Active Job Nedir?
Active Job, işleri bildirmek ve bunların çeşitli kuyruk arka uçlarında çalıştırılmasını sağlamak için bir çerçevedir. Bu işler, düzenli olarak planlanmış temizliklerden faturalandırma ücretlerine ve postalara kadar her şey olabilir. Küçük iş birimlerine bölünebilecek ve paralel olarak çalışabilecek herhangi bir şey, gerçekten.
## Active Job Amacı Nedir?
Ana nokta, tüm Rails uygulamalarının yerinde bir iş altyapısına sahip olmasını sağlamaktır. Daha sonra, Gecikmeli İş ve Resque gibi çeşitli iş yürütücüler arasındaki API farkları hakkında endişelenmenize gerek kalmadan, bunun üzerine inşa edilmiş çerçeve özelliklerine ve diğer değerli taşlara sahip olabiliriz. Kuyruk arka ucunu seçmek, o zaman daha çok operasyonel bir endişe haline gelir. Ve işlerinizi yeniden yazmak zorunda kalmadan bunlar arasında geçiş yapabileceksiniz.
## Active Job Oluşturma
Active Job, işleri oluşturmak için `app/jobs` adında bir dosya oluşturur.
```
$ bin/rails generate job guests_cleanup
invoke  test_unit
create    test/jobs/guests_cleanup_job_test.rb
create  app/jobs/guests_cleanup_job.rb
```
Belirli bir kuyrukta çalışacak bir iş de oluşturabilirsiniz:
```
bin/rails generate job guests_cleanup --queue urgent
```
Bir oluşturucu kullanmak istemiyorsanız, uygulama/işler içinde kendi dosyanızı oluşturabilirsiniz, bunun ApplicationJob'dan miras aldığından emin olun.
Beklenen Görünüm:
```
class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform(*guests)
    # Do something later
  end
end
```
Active job kullanımından ve ne olduğundan bahsettim. Detaylar için: [](https://guides.rubyonrails.org/active_job_basics.html)
