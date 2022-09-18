# GİT NEDİR?

Git bir versiyon kontrol sistemidir.

Versiyon kontrol sistemi (Version Control System) bir proje üzerinde yaptığımız değişiklikleri adım adım kaydeden ve isterseniz bunu internet üzerinde depoda (repository) saklamamızı ve yönetmemizi sağlayan bir sistemdir. Ayrıca Git bir dağınık (distributed) versiyon kontrol sistemi olduğu için her bir istemci (client) sadece dosyaların en son anlık görüntüsünü kontrol etmekle kalmaz, aynı zamanda tam geçmişi de dahil olmak üzere depoyu tamamen kopyalar. Her clone gerçekten tüm verilerin tam bir yedeğidir. Böylece, herhangi bir sunucu ölürse ve bu sistemler bu sunucu aracılığıyla işbirliği yapıyorsa, istemci depolarından herhangi biri geri yüklemek için sunucuya kopyalanabilir. Bu nedenle dağınık bir versiyon kontrol sistemi olan Git’i kullanmak projemiz için oldukça güvenlidir.

Ayrıca Git, bir projede çalışırken yaptığınız değişikleri görebilmenizi, eski haline erişebilmenizi sağlar. Bu şekilde projenin her adımına erişebilir ve geliştirme süreçlerini sağlıklı bir şekilde izleyebiliriz. Ayrıca bir projede birden fazla kişi çalışması durumunda da aynı dosya üzerinde yapılan değişikliklerin sorun çıkmadan kontrol edilebilmesine, projelerin güncel versiyonlarına ulaşabilmeye yardımcı olur. Bu tür avantajlar sağlaması nedeniyle birçok yönden fayda sağlar ve hız artırır.

Git kullanabilmek için belirli başlı komutlara ihtiyaç duyarız. Bu komutlar ve işlevlerini madde madde listeleyelim;

# TEMEL GİT KOMUTLARI

- git init 			----- Proje dosyamızın içine girdikten sonra yazdığımızda gite projeyi yükler
- git add .			----- Projemizi git geçiş bölgesine ekler
- git branch [branchadi]		----- Yeni bir branch açar
- git remote add origin [link]	----- Yerel depoya origin adıyla uzak depoyu (remote repository) ekleme işlemidir
- git commit -m ""		----- Git deposuna dosyamızı atar
- git push origin [branchadi]	----- Yerel commitleri uzak depoya gönderir
- git log 			----- Projenin versiyonu, güncellenme tarihi vb. bilgileri tutar
- git status			----- Proje üzerinde yapılan değişiklikleri gösterir
- git diff			----- Dosyamızdaki değişiklikleri satır satır bize gösterir (çalışma dizini ve geçiş bölgesi arasındaki fark)
- git diff --staged		----- Geçiş bölgesi ve depo arasındaki farkı bize gösterir
- git rm ["dosyaadi"]		----- İsmi girilen dosyayı siler ve geçiş bölgesine bildirir, tekrar commit etmek gerekir
- git rm -r ["klasöradi"]		----- İçinde birden çok dosya olan klasörleri siler ve geçiş bölgesine bildirir, tekrar commit etmek gerekir
- git mv dosyaadi [yenidosyaadi]	----- Dosya ismini değiştirmemizi sağlar
- git mv [dosyaadi] [klasör/]	----- Dosyayı başka bir dizine(klasöre) taşır
- git checkout -- [dosyaadi]	----- Kendisi veya içeriği silinen/değiştirilen dosyayı geri getirir (çalışma dizini)
- git reset HEAD [dosyaadi]	----- Geçiş bölgesine aktarılan bir dosyadaki değişikleri geri getirir (geçiş bölgesi)
- git checkout [hashkodu -- .]	----- Bir önceki versiyona geçmeyi sağlar
- git checkout [branch name]	----- Branch değişikliği yapmamızı sağlar
- git checkout -b [branch name]	----- Yeni bir branch oluşturur ve o branche geçiş yaparız.
- git stash			----- Branch üzerinde yapılan değişikliklerin geçici olarak Git tarafından kayıt altına alınmasını sağlar