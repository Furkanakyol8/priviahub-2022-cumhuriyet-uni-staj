=begin

before_action:  
befor_action verilen eylemleri ve blokları, çağrıldıkları sırayla yürütür.
Yani aslında çalışacak olan eylemden önce gerekli verileri hazırlamak için kullanılır.
Önemli olan, kuyruğa alınan yöntemlerin herhangi bir zamanda yürütmeyi durdurabilmesi ve yanıt oluşturan denetleyici yöntemlerinden herhangi birini çağırarak yanıt döndürebilmesidir.   

=end

class SomeController < ApplicationController
    before_action :authorize_user
    
    def show
        # ...
    end
  # Burada önce :authorize_user yürütülür, sonra show metotuna geçilir.
                      
    private
    
    def authorize_user
        # ...
    end
  end
 




