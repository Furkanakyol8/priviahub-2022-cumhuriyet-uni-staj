# Devise Gemi Kullanımı:

Kurulumunu [](https://github.com/heartcombo/devise)  adresinden yapabilirsiniz. Orada bu gemle ilgili çok fazla belge ve detaylı anlatımlar var. Devise gemi bizim authentication işlemlerini yapabilmemize olanak sağlayan gemdir. Kullanıcı oluşturmayı, şifre oluşturmayı ve birçok kullanıcıyla ilgili birçok yapıyı sağlayan bir gemdir. 
Github linkindeki ‘getting started’ kısmındaki ilk kodu gemfile dosyamızdaki # gem “bcrypt” … kısmının altına ekliyoruz (Şekil 1). Sonrasında vs code terminalimize “bundle install” diyerek tüm gemleri ekliyoruz. Ardından Github hesabındaki ikinci kodu yazıyoruz.

![resim_1](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_6/img/Resim1.png)

Bunları yaptıktan sonra alacağımız çıktı aşağıdaki gibi olur (Şekil 2).

![resim_2](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_6/img/Resim2.png)

 Şekil 2’de de gördüğümüz gibi devise.rb ve devise.en.yml dosyalarımız oluştu. Devise gemi nedir? Bundan bahsedelim. Devise, Warden tabanlı Rails için esnek bir kimlik doğrulama çözümüdür. 

- Aynı anda birden fazla modelde oturum açmanıza izin verir.
- Modülerlik konseptine dayanmaktadır.

Devise gemi, Warden'ın üzerine inşa edilmiştir. Devise, genellikle Stratejileri kullanarak Warden ile etkileşime girer. Devise'in kullandığı Stratejiler, parolaları, e-posta onaylarını şifrelemek ve HTTP Kimlik Doğrulaması içindir. Devise'ı genişletmeniz veya artırmanız gerekiyorsa, özelleştirilmiş bir Strateji sınıfı uygulayabilirsiniz. Devise gemi 10 modülden oluşmaktadır.

1.	Database Authenticatable: Oturum açarken bir kullanıcının gerçekliğini doğrulamak için bir parolayı veri tabanında saklar ve depolar. Kimlik doğrulama hem POST istekleri hem de HTTP database authenticatable yoluyla yapılabilir.

2.	Omniauthable: OmniAuth, []( https://github.com/omniauth/omniauth ) desteği ekler.

3.	Confirmable: Onay talimatları içeren e-postalar gönderir ve oturum açma sırasında bir hesabın zaten onaylanıp onaylanmadığını doğrular.

4.	Recoverable: Kullanıcı parolasını sıfırlar ve sıfırlama talimatları gönderir.

5.	Registerable:  Kullanıcıların bir kayıt işlemi aracılığıyla kaydolmasını sağlar ve ayrıca hesaplarını düzenlemelerine ve yok etmelerine olanak tanır.

6. Rememberable: Kullanıcıyı kaydedilmiş bir çerezden hatırlamak için bir belirteç oluşturmayı ve temizlemeyi yönetir.

7. Trackable:  oturum açma sayısını, zaman damgalarını ve IP adresini izler.

8. Timeoutable: Belirli bir süre içinde etkin olmayan oturumları sona erdirir.

9. Validatable: e-posta ve parola doğrulamalarını sağlar. İsteğe bağlıdır ve özelleştirilebilir, böylece kendi doğrulamalarınızı tanımlayabilirsiniz.

10.	Lockable: Belirli sayıda başarısız oturum açma girişiminden sonra bir hesabı kilitler. E-posta yoluyla veya belirli bir süre sonra kilidi açabilir.
Şimdi Devise Token’ a bakalım.
Bu gem devise ile entegre halindedir. Gemfile dosyamıza gem 'devise_token_auth' kodunu ekleyip (Şekil 3) terminalde bundle install diyoruz.

![resim_3](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_6/img/Resim3.png)

Daha sonra config ayarlarının olduğu bir dosya oluşturmak için şekil 4’teki komutları yazıyoruz.

![resim_4](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_6/img/Resim4.png)

Burada config ayarlarımın olduğu bir dosya oluşuyor. 
Rails routes dediğimizde auth ayarlarımızın hepsi gözüküyor.

![resim_4_5](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_6/img/Resim4-5.png)

Ayrıca route ları filtrelemek için; (mesela sadece auth ile ilgili şeyler) “Rails routes | grep auth” dememiz yeterli. Routes filtrelenmiş olur (Şekil 5).


![resim_5](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_6/img/Resim5.png)

# Pundit Gemi: 

Gemfile dosyamıza “gem ‘pundit’” şeklinde kodumuzu ekleyip sonra terminalden bundle install yapıyoruz.

![resim_5_6](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_6/img/Resim5-6.png)

Devise_token_auth dosyasında false yapılması gereken bir yer var (Şekil 6). Nedeni ise hiçbir zaman token’ımızın düşmemesini sağlıyoruz. 

![resim_6](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_6/img/Resim6.png)

Pundit install dediğimizde policies dosyamızda bir dosya oluştu. Bu da her bir model dosyası için policies oluşturmamızı sağlar. Burada yetkilendirme işlemlerimizi yaparız.
Şimdi pundit policies i generate edelim.

![resim_6_5](https://gitlab.com/privia_security/Software/staj/backend/priviahub-2022-cumhuriyet-uni-staj/-/raw/vesileyavuz/Hafta_6/img/Resim6-5.png)

Böylece ilgili dosyalar oluşacak ve işlem yapmamızı sağlayacaktır.

# I18n Gem Kullanımı:

Uygulamanızı İngilizce dışında tek bir özel dile çevirmek veya çoklu dil sağlamak için kullanımı kolay ve genişletilebilir bir çerçeve sağlar. Yani Rails uygulamanızı uluslararası hale getirme olanağı sağlar. I18n API'sinin en önemli yöntemleri şunlardır:
- translate 
- localize  

Bunlar #t ve #l takma adlarına sahiptir ve şu şekilde kullanılabilir.

```
 I18N.T 'STORE.TİTLE'
I18N.L TİME.NOW 
```

## I18n Modülünü Yapılandırma:

Rails dizindeki tüm dosyaları .rb ve .yml dosyaları otomatik olarak translations load path’ e  (.config/locales) ekler. Bu dizindeki varsayılan yerel ayar, örnek bir çeviri dizesi çifti içerir:

```
EN:
HELLO: "HELLO WORLD" 
```

Bu, (:en) yerel ayarda, Hello anahtarının Hello world dizesiyle eşleneceği anlamına gelir. Çeviri yükleme yolu ( I18n.load_path), otomatik olarak yüklenecek dosyalara giden bir dizi yoldur. Bu yolu yapılandırmak, çeviri dizini yapısının ve dosya adlandırma şemasının özelleştirilmesine izin verir.

## Tarih ve saat ile çalışma:

I18n modülü, tarih ve saatle çalışan (localize) adlı bir yöntem sağlar. 

```
PUTS I18N.L(TİME.NOW, FORMAT: :SHORT)
```

İlk argüman tarih-saat nesnesidir, ikincisi ise seçenekler içeren bir karmadır. Spesifik olarak, biçimlendirme stilini seçmeniz gerekir.

## Cinsiyet bilgileriyle çalışma:

Ne yazık ki, I18n gem'in cinsiyet bilgisi için özel bir desteği yoktur, ancak çevirilerin yuvalanmasından yararlanabilir ve kendimiz tanıtabiliriz. 

```
 EN:
SAYS:
MALE: HE SAYS %{CONTENT}
FEMALE: SHE SAYS %{CONTENT}
NEUTRAL: SAYS %{CONTENT}
```

Gördüğünüz gibi, gerektiği kadar seçenek sağlayabiliriz: yukarıdaki örnekte, örneğin kullanıcının cinsiyetini bilmediğiniz durumlarda kullanılabilecek cinsiyetten bağımsız bir ifade de ekledik. Ve sonra cinsiyetin değişkende saklandığını varsayalım.

`GENDER = "FEMALE"
PUTS I18N.T("SAYS.#{GENDER}", CONTENT: 'Hİ THERE!')`

# Active Record Migration

Bir şema, içinde hiçbir şey olmadan başlar ve her geçiş, tablolar, sütunlar veya girdiler eklemek veya kaldırmak için onu değiştirir. Active Record, şemanızı bu zaman çizelgesi boyunca nasıl güncelleyeceğinizi bilir ve onu geçmişteki herhangi bir noktadan en son sürüme getirir. Active Record ayrıca db/schema.rbdosyanızı veritabanınızın güncel yapısına uyacak şekilde güncelleyecektir. Migration’ a bir örnek verelim.

```
 CLASS CREATEPRODUCTS < ACTİVERECORD::MİGRATİON[7.0]
  DEF CHANGE
   CREATE_TABLE :PRODUCTS DO |T|
     T.STRİNG :NAME
     T.TEXT :DESCRİPTİON
     T.TİMESTAMPS
   END
 END
END
```

Active Record, veritabanımızda yapacağımız işlemler için bize birçok metot sunmaktadır. Tablo oluşturma, silme, değiştirme, alan ekleme gibi. Bunlardan bazıları:

- drop_table: Bir tabloyu silmek için bu metodu kullanırız. Change metodunu kullandıysak drop_table’ı kullanmamıza gerek kalmaz, “rake db:rollback” diyerek otomatik olarak create_table’ın tersi olan drop_table metodunu kullanabiliriz. Eğer change metodunu kullanmıyorsak şu komutu yazmalıyız; “drop_table :cars”

- rename_table: Bir tablonun adını değiştirmek istiyorsak bu metodu kullanırız.

- change_table: Daha önceden oluşturduğumuz bir tablo üzerinde değişiklik yapmamıza olanak sağlar. (add_column, remove_column, add_index, remove_index v.b metotlar ile birlikte kullanılabilir.)

- add_column: Tabloya yeni bir sütun(alan) eklerken bu metodu kullanırız.

- remove_column: Var olan bir tablodan, sütun silmek istediğimizde remove_column metodunu kullanırız.

- change_column: Daha önceden oluşturmuş olduğumuz bir sütunun kullanacağı veri tipini, varsayılan değerini v.b değiştirmek istersek bu metodu kullanırız.

# Active Record Callbacks

Geri aramalar, bir nesnenin yaşam döngüsünün belirli anlarında çağrılan yöntemlerdir. Geri aramalarla, bir Active Record nesnesi oluşturulduğunda, kaydedildiğinde, güncellendiğinde, silindiğinde, doğrulandığında veya veritabanından yüklendiğinde çalışacak kod yazmak mümkündür.
Mevcut geri aramaları kullanmak için, onları kaydetmeniz gerekir. Geri aramaları sıradan yöntemler olarak uygulayabilir ve bunları geri aramalar olarak kaydetmek için makro tarzı bir sınıf yöntemi kullanabilirsiniz:

```
 CLASS USER < APPLİCATİONRECORD
  VALİDATES :LOGİN, :EMAİL, PRESENCE: TRUE

 BEFORE_VALİDATİON :ENSURE_LOGİN_HAS_A_VALUE

 PRİVATE
    DEF ENSURE_LOGİN_HAS_A_VALUE
     İF LOGİN.NİL?
       SELF.LOGİN = EMAİL UNLESS EMAİL.BLANK?
     END
   END
 END
 ```

İlgili işlemler sırasında aranacakları sırayla listelenen tüm mevcut Active Record callbacks içeren bir liste:

1. Creating an Object

- before_save

- around_save

- before_create

- around_create

- after_create

- after_save

- after_commit / after_rollback


2. Updating an Object

- before_validation

- after_validation

- before_save

- around_save

- before_update

- around_update

- after_update

- after_save

- after_commit / after_rollback

3. Destroying an Object

- before_destroy

- around_destroy

- after_destroy

- after_commit / after_rollback

# Active Record Associations

Rails'de associations, iki active record modeli arasındaki bağlantıdır. Modeller arasında neden ilişkilendirmelere ihtiyacımız var? Çünkü kodunuzda yaygın işlemleri daha basit ve kolay hale getirirler. Örneğin, yazarlar için bir model ve kitaplar için bir model içeren basit bir Rails uygulamasını düşünün. Her yazarın birçok kitabı olabilir. İlişkilendirmeler olmadan model bildirimleri şöyle görünür:

```
 @BOOKS = BOOK.WHERE(AUTHOR_İD: @AUTHOR.İD) 
@BOOKS.EACH DO |BOOK|
  BOOK.DESTROY
END
@AUTHOR.DESTROY 
```


Şimdi, mevcut bir yazar için yeni bir kitap eklemek istediğimizi varsayalım. Bunun gibi bir şey yapmamız gerekecek:

```
 @BOOK = BOOK.CREATE(PUBLİSHED_AT: TİME.NOW, AUTHOR_İD: @AUTHOR.İD)
```

Veya bir yazarı silmeyi ve tüm kitaplarının da silinmesini sağlamayı düşünün:

```
 @BOOKS = BOOK.WHERE(AUTHOR_İD: @AUTHOR.İD)
 @BOOKS.EACH DO |BOOK|
  BOOK.DESTROY
 END
 @AUTHOR.DESTROY
 ```

Active Record ilişkilendirmeleriyle, Rails'e iki model arasında bir bağlantı olduğunu bildirerek bildirerek bu ve diğer işlemleri kolaylaştırabiliriz. İşte yazarları ve kitapları ayarlamak için gözden geçirilmiş kod:

```
CLASS AUTHOR < APPLİCATİONRECORD
  HAS_MANY :BOOKS, DEPENDENT: :DESTROY
END

CLASS BOOK < APPLİCATİONRECORD
  BELONGS_TO :AUTHOR
END
```

## Association Türleri:

Association Türleri:
Rails, altı tür ilişkilendirmeyi destekler:

- belongs_to

- has_one

- has_many

- has_many :through

- has_one :through

- has_and_belongs_to_many

# Çalışmam esnasında not aldığım bazı yapılar:

- t.belongs_to: Product’daki category_id ile :categories’teki category_id’yi eşleştiriyor. Bir product nesnesinin bir category nesnesine ait olduğunu belirtir.

- Validation: Onaylama kontrolünün amacı Web uygulamalarında kullanıcıların girmiş olduğu verilerin veritabanına kaydedilmeden önce istenen şartları sağlayıp sağlamadığını kontrol etmektir.

- Has one belongs: Belongs_to ile aynı işi yaparlar. Başka bir modelin diğer modele referansı olduğunu gösterir. Eğer category tek bir ürüne verilecekse bu kullanılır.

- Has many belongs: Bu ilişkilendirme, modelin her örneğinin başka bir modelin sıfır veya daha fazla örneğine sahip olduğunu gösterir.

- Veritabanında bir şeyin içine girmek için \c diyip o şeyin adını yazarız ve \l ile de veritabanında neler olduğunu görürüz.
