=begin
    
after_action:
after_action, istemciye gönderilmek üzere olan yanıt verilerine erişim vardır.
Başarılı bir eylemden sonra yürütülür, istisna olmadıkça. 
    
=end

class PreviewMailer < ActionMailer::Base
    after_action :set_delivery_options
  
    def preview recipient, subject, body
     #...
    end
   
    private
    
    def set_delivery_options
       #...
    end
    
    def config
        #...
    end
end