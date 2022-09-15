# Ruby Bloklar

Ruby blokları, yöntemlere aktarılabilen küçük anonim işlevlerdir. Bloklar bir do/end ifadenin içine veya parantez içine alınır'{}'. Ve birden çok argümanı olabilir.
Argüman adları iki boru |karakteri arasında tanımlanır. Bir Ruby bloğu, biraz mantık (kod) kaydetmenize ve daha sonra kullanmanıza izin verdiği için kullanışlıdır. Bu, bir dosyaya veri yazmak, bir öğenin diğerine eşit olup olmadığını karşılaştırmak veya hatta bir hata mesajı yazdırmak gibi bir şey olabilir.

# Proc ve Lambda

Kod parçalarını metodlara taşımanın yollarından sadece birisi Block' lardır. Ancak block' lar bir nesne olarak ifade edilemezler. Oysa ki Ruby dilinde her şeyin bir nesne olduğu öne sürülür. İşte bu noktada devreye Proc ve Lambda enstrümanları girer.

## Proc
Proc ile de bir kod bloğu işaret edilebilir. Block' dan farkı ise bu kod parçasının bir nesneye atanabiliyor olmasıdır(Yani bir kod bloğunu nesne olarak kaydedip kullanabiliriz). Bu da doğal olarak yeniden kullanılabilirliği mümkün kılmaktadır. Bir başka deyişle bir proc nesnesi ile işaret edilen kod parçacığı program içinde farklı noktalarda tekrar tekrar kullanılabilir.

## Lambda
Lambda, bir bloğu ve parametrelerini bazı özel sözdizimleriyle tanımlamanın bir yoludur. Bu lambda'yı daha sonra kullanmak üzere bir değişkene kaydedebilirsiniz.
Bir lambda tanımlamak içindeki kodu çalıştırmaz, bunun için call yöntemini kullanmalıyız.

## Farkları
-Lambda'lar {} ile tanımlanır ve Proc.new {} ile çalışır 
-Procs mevcut yöntemden dönerken lambdalar lambda'nın kendisinden döner.
-Procs, doğru sayıda argümanla ilgilenmezken, lambdalar bir istisna oluşturacaktır.
