# Action Controller

Action Controller, bir Rails uygulamasında denetleyicileri yöneten bileşendir. Action Controller çerçevesi, bir Rails uygulamasına gelen istekleri işler, parametreleri çıkarır ve bunları istenen eyleme gönderir. Action Controller tarafından sağlanan hizmetler, oturum yönetimi, şablon oluşturma ve yönlendirme yönetimini içerir. Bir olaydan önce, çalışmasını istediğimiz metotların çalıştırılmasını sağlar.

- after_action

- append_after_action

- append_around_action

- append_before_action

- around_action

- before_action

- prepend_after_action

- prepend_before_action

- skip_after_action

- skip_before_action

## Before-Action:

Örneğin bir post isteği attık ve bu create metotuna yönlendirildi. Create metotundan önce befor-action tanımlarsak ilk önce bu çalışır. Yani olaydan önce.

## After-Action:

Create metotundan sonra after-action metotu tanımlarsak create metotu bitince bu çalışır. Bunlar clean kod için kullanılır.
