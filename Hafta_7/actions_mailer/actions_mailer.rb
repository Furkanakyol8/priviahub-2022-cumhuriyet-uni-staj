class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
  
    def welcome_email
      @user = params[:user]
      @url  = 'http://example.com/login'
      mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
  end

  
  class Shipmentontroller < ApplicationController
    def create
        @shipment = Shipment.new(shipment_params)
        @user = user.find_by(id: shipment_params[:user_id])

        if @shipment.save
            ShippingConfirmationMailer.with(user: @user, shipment: @shipment).shipping_confirmation_email.deliver_later
        end
    end

    private

    def shipment_params
        params.require(:shipment).permit(:user_id, :item, :price)
    end
  end