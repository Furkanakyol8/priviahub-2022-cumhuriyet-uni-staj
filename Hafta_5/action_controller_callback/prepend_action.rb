=begin
    
Rails, bir eylemden önce veya sonra ortak kod parçalarını yürütmek için denetleyicilerde geri aramaların kullanılmasını teşvik eder.
Bunun için prepend_after_action, prepend_before_action ve prepend_around_action kullanır.
prepend_before_action, Kendisine iletilen geri aramayı geri arama zincirinin önüne ekler.
prepend_after_action, Kendisine iletilen geri aramayı geri arama zincirinin sonuna ekler.
prepend_around_action, Kendisine iletilen geri aramayı geri arama zincirinin başlangıcına ekler. 
    
=end

class MagicAuthController < ApplicationController
  prepend_before_action :set_cookie, only: [:auth]
  
  def auth
  end
end

