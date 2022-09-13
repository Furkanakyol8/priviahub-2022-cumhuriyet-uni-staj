#Metotlar

Metot bildirimi def anahtar sözcüğü ile başlar, aynı satıra metot adı sonra varsa metodun parametreleri (arguments) yazılır. Sonra satırbaşı yapılarak metot gövdesi başlatılır. Metot gövdesine metoda yaptırılacak işleri yapan deyimler alt alta yazılır. Gövdeye yazılacak deyimler için bir kısıt yoktur. Hiçbir iş yapmayacak metotların gövdesi boş olabilir. Çok iş yapacak fonksiyonların gövdesine gerektiği kadar deyim yazılabilir. Deyimleri birbirlerinden ayırmak için ya her deyim ayrı bir satıra yazılır ya da deyimler arasına (;) konulur. En son satıra end anahtar sözcüğü konulur. end, metot bildiriminin bitiş yeridir.
Ruby metotları değer veren (return) ya da değer vermeyen metotlar diye ikiye ayrılabilir. Değer vermeyenler, bazı dillerdeki procedure diye adlandırılan yapının rolünü oynar. Metot tek ya da çoklu değer verebilir (return values). Genel kural olarak, bir metoda bir tek iş yaptırmalıyız. Böylece metodun taşınabilirliği sağlandığı gibi, güncellenmesi de kolay olur. Metodun vereceği değeri, gövdenin son satırında return anahtar terimi ile belirtmek mümkündür. Ama Ruby buna gerek duymaz; gövdedeki son satır değerini return değeri olarak verir. Yeri gelmişken parametrelere değinelim.

##Parametre nedir?
Ruby'deki parametreler, yöntem tanımında tanımlanan ve bir yöntemin argümanları kabul etme yeteneğini temsil eden değişkenlerdir.
Metot kullanılmadan önce parametreler tanımlanmalıdır.
Parametreler, yöntemin tanımı ile tam olarak tanımlanmalıdır. Aynı yöntemi diğer parametrelerle tanımlamak istersek, bir öncekinin üzerine yazacaktır. Ancak etki hiçbir şekilde özetlenmeyecektir.
Parametreler virgülle ayrılır.
Birden fazla parametre tanımlamak istediğimizde virgül(,) kullanmalıyız.
Parametre tanımı için parantezler isteğe bağlıdır.
Parametreleri tanımlarken parantez olmadan yapabiliriz. Yöntem içinde gerekli bir veriye erişilemediğinde, bir yönteme parametreler eklenmelidir.
Yöntemin sahip olduğu tüm parametre grubuna bir parametre listesi denir.
Yine, daha çok şeyleri nasıl adlandıracağınızla ilgili. Bir metotta tanımlanan parametre grubunun tamamına parametre listesi denir.
Parametreler ve bağımsız değişkenler farklı varlıklardır.
Makalelerde sıklıkla parametreler ve argümanlar birbirinin yerine kullanılır. Bu tür varlıkları ayırt etmek gerekir.
Çağrı sırasında metoda aktarabildiğimiz varlığa argüman denir.
Bir metot tanımlarken bildirdiğimiz varlığa parametre denir.
Bir metoda argüman ilettiğimizde metot aynı ada sahip yerel bir değişken yaratır.
Ruby'de, bir yöntemin içindeki argümanlar referansla iletilir.
Bu çok önemli bir nokta çünkü bazı programlama dillerinde yöntemin içindeki argümanlar, bir kodu birçok yönden etkileyen değere göre iletilir. Ruby'de farklı bir durumumuz var, yöntemin içinde sahip olduğumuz değişken bir nesneye referans depoluyor.
Bu nedenle, yöntem içinde bir nesneyi değiştireceksek, yöntemin dışında da değişecektir.

##Sonuçlar
- Ruby'de, diğer birçok programlama dilinde olduğu gibi, yöntemlerin parametreleri vardır;
- Ruby'deki parametreler, yöntem tanımında tanımlanan ve bir yöntemin argümanları kabul etme yeteneğini temsil eden değişkenlerdir;
- parametreler, kullanımdan önce bir yöntemle birlikte tanımlanır;
- çok sayıda parametremiz varsa, bunlar virgülle (,) ayrılmalıdır;
- yöntem tanımındaki parametreler için parantezler isteğe bağlıdır, ancak parantezlerle birlikte yöntem daha okunabilirdir;
- yöntem, parametre olmadan işlevini mükemmel bir şekilde yerine getiriyorsa, ekstra parametre eklemeye gerek yoktur;
- bir yöntemin sahip olduğu tüm parametre grubuna bir parametre listesi denir;
- parametreler ve bağımsız değişkenler farklı varlıklardır, bir yöntem için parametreleri tanımlarız ve bağımsız değişkenler — bir yönteme geçeriz;
- bir metoda bir argüman ilettiğimizde, metodun içinde karşılık gelen bir parametrenin adına sahip bir yerel değişken yaratılır;
- Ruby'de argümanlar referansa göre iletilir ve bir metodun içindeki nesne değiştirildiğinde, metodun dışında da değiştirilir.

#Metot Sözdizimleri

##Parametresiz Metot Bildirimi
En basit fonksiyon bildirimi, parametresi olmayan fonksiyon bildirimleridir.

##Parametreli Fonksiyon Bildirimi
 Parametreler yalın olabileceği gibi array gibi yapısal tipler de olabilir.  Parametreli metot çağrılırken, parametrelere gerçek değerler atanır. Metot bildirimindeki değişkenlere parametre demiştik. Metot çağrısında parametrelere atanan değerlere gerçek parametre değeri denilir. Gerçek parametre değerleri, bir literal (sabit) olabileceği gibi, değeri programda bulunabilen bir ifade ya da fonksiyon olabilir. Metot parametrelerine bildirimde öntanımlı (default) değerler atanabilir. Metot çağrılırken parametresiz çağrı yapılırsa, öntanımlı değerler işlevsel olur. Ama, istenirse, çağrıda başka parametre değerleri kullanılabilir. Metot çağrılırken parametre kullanılmazsa; yani parametresiz çağrı yapılırsa, öntanımlı değerler işler. Ama çağrıda öntanımlı değerlerden farklı parametre değerleri kullanılırsa, öntanımlı değerler işlevsiz kalır, yeni değerler işler.

##Return Değeri:
Her Ruby metodu, öntanımlı olarak son satırındaki değeri return değeri olarak verir. 

##Değişken Sayıda Parametre:
Genel olarak, fonksiyon çağrılırken parametrelerin hepsine gerçek değerler verilir. Değerlerin yazılış sırası, parametrelerin yazılış sırasıdır. Ancak, Ruby, değişken sayıda parametre kullanılmasına izin verir. Bunun için, metot bildiriminde parametrenin önüne joker (*) konulur.

#Sınıf Metotları 
Sınıf metotları (class methods) doğrudan sınıftan çağrılabilen metotlardır. Metot adının önüne ait olduğu sınıf_ adı ya da self anahtar sözcüğü yazılarak tanımlanabilirler. Araya (.) bağlacı konulur.

#Anlık Metotlar
Anlık (instance) metotlar anlık değişkenler gibi, ancak sınıftan üretilen nesne içinde işlevseldir. 





