"strftime", "zamandan gelen dize" anlamına gelir.

Verilen biçim dizgisindeki yönergelere göre zamanı biçimlendirir .

Yönergeler yüzde (%) karakteri ile başlar. Yönerge olarak listelenmeyen 
herhangi bir metin, çıktı dizesine iletilecektir.

Yönerge bir yüzde (%) karakteri, sıfır veya daha fazla bayrak, isteğe bağlı minimum alan genişliği, isteğe bağlı değiştirici ve aşağıdaki gibi bir dönüştürme belirtecinden oluşur.

%<flags><width><modifier><conversion>

## Flags:

- sayısal bir çıktıyı doldurma. 

_ dolgu için boşluk kullanın. 

0 dolgu için sıfırları kullanın. 

^ sonuç dizesini büyüt. 

#davayı değiştir. 

: %z için iki nokta üst üste kullanın.

Minimum alan genişliği, minimum genişliği belirtir.

Değiştiriciler “E” ve “O” dur. Onlar göz ardı edilir.

# Biçim Yönergeleri:

## Tarih (Yıl, Ay, Gün):

%Y - Sağlanmışsa, yüzyıl ile yıl, sonucu en az 4 basamak dolduracaktır. 
   -0001, 0000, 1995, 2009, 14292, vb. 
  
%C - yıl / 100 (2009'da 20 gibi aşağı yuvarlanır) 
 
%y - yıl % 100 (00..99) 

 
%m - Yılın ayı, sıfır- dolgulu (01..12) 

%_m boş dolgulu ( 1..12) 

%-m dolgusuz (1..12) 
 
%B - Tam ay adı (``Ocak'') 

%^B büyük harfli (` `JANUARY'') 
 
%b - Kısaltılmış ay adı (``Jan'') 

%^b büyük harfle (``JAN'') 
 
%h - %b ile eşdeğerdir 

 
%d - Ayın günü, sıfır dolgulu (01 ..31) 

%-d dolgusuz (1..31) 
 
%e - Ayın günü, boş dolgulu ( 1..

%j - Yılın günü (001..366) 

## Zaman (Saat, Dakika, Saniye, Altsaniye): 

%H - Günün saati, 24 saatlik saat, sıfır dolgulu (00..23) 
  
%k - Saat günün saati, 24 saatlik saat, boşluk dolgulu ( 0..23) 

%I - Günün saati, 12 saatlik, sıfır dolgulu (01..12) 

%l - Günün saati, 12- saat saati, boş dolgulu ( 1..12) 

%P - Meridyen göstergesi, küçük harf (``am'' veya ``pm'') 

%p - Meridyen göstergesi, büyük harf (``AM'' veya ``PM') ') 

%M - Saatin dakikası (00..59) %S - Dakikanın saniyesi (00..60)

%L - Saniyenin milisaniyesi (000..999) Milisaniyenin 

altındaki rakamlar üretilmemek üzere kesilir 1000. 

%N - Kesirli saniye basamakları, varsayılan 9 basamaktır (nanosaniye)

%3N milisaniye (3 basamak) 

%6N mikrosaniye (6 basamak) 

%9N nanosaniye (9 basamak) 

%12N pikosaniye (12 basamak) 

%15N femtosaniye (15 basamak) 

%18N attosaniye (18 basamak) 

%21N zeptosaniye (21 basamak) 

% 24N yoktosaniye (24 basamak) Belirtilen uzunluğun altındaki basamaklar, yukarı taşımayı önlemek için kısaltılır. 

## Saat dilimi: 

%z - UTC'den saat ve dakika farkı olarak zaman dilimi (ör. +0900) 

%:z - UTC'den iki nokta üst üste ile saat ve dakika farkı (ör. +09:00) 

%::z - saat, dakika ve saniye UTC'den fark (örn. +09:00:00)

%Z - Kısaltılmış saat dilimi adı veya benzer bilgiler. (İşletim sistemine bağlı) 

## Hafta içi: 
  
%A - Hafta içi tam gün adı (``Pazar'') 

%^A büyük harfle (```SUNDAY'') 

%a - Kısaltılmış ad (``Sun'') 

%^a büyük harfle (` `SUN'') 

%u - Haftanın günü (Pazartesi 1, 1..7) 

%w - Haftanın günü (Pazar 0, 0..6) 

## ISO 8601 hafta bazında yıl ve hafta numarası:

YYYY'nin ilk haftası Pazartesi ile başlar ve YYYY-01-04'ü içerir.İlk 
haftadan önceki yıldaki günler, bir 
önceki yılın son haftasıdır. 

%G - Hafta bazında yıl 

%g - Hafta bazında yılın son 2 hanesi (00..99) 

%V - Hafta bazında yılın hafta numarası (01..53)

## Hafta numarası: 

Pazar veya Pazartesi ile başlayan YYYY'nin ilk haftası (%U 
veya %W'ye göre). Yılın ilk haftasından önceki günler 0. haftadadır. 

%U - Yılın hafta numarası. Hafta Pazar ile başlar. (00..53) 

%W - Yılın hafta sayısı. Hafta Pazartesi ile başlar. (00..53) Dönemden bu yana geçen saniye: 

%s - 1970-01-01 00:00:00 UTC'den bu yana saniye sayısı. 

## Değişmez dize: 

%n - Yeni satır karakteri (\n) 

%t - Sekme karakteri (\t) 

%% - Değişmez ``%'' karakteri 

## Kombinasyon: 

%c - tarih ve saat (%a %b %e %T %Y ) 

%D - Tarih (%m/%d/%y) 

%F - ISO 8601 tarih formatı (%Y-%m-%d) 

%v - VMS tarihi (%e-%^b-%4Y)

%x - %D ile aynı 

%X - %T ile aynı 

%r - 12 saatlik zaman (%I:%M:%S %p) 

%R - 24 saatlik zaman (%H:%M) 

%T - 24 saatlik zaman (%H:%M:%S)





