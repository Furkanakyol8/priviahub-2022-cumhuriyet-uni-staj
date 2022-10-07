=begin
    
skip_before_action, İstek döngüsünü durdurabilir. İstek döngüsünden önce yazılır.
skip_after_action, İstek döngüsünü durdurabilir. İstek döngüsünden sonra yazılır.
skip_around_action, İstek döngüsünü durdurabilir. İstek döngüsünün etrafına yazılır.
    
=end



class LoginsController < ApplicationController
    skip_before_action :require_login, only: [:new, :create]
end