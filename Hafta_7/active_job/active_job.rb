class NewsletterJob < ApplicationJob
    self.queue_adapter = :sidekiq
end

  class FeeJob < ApplicationJob
    self.queue_adapter = :resque
end


require 'sidekiq/web'
require 'sidekiq/cron/web'

Rails.application.routes.draw do
  mount Sidekiq::Web, at: '/sidekiq'
end


class UserMailer < ApplicationMailer
    def welcome(user)
      @user = user
      mail(to: @user.email, subject: 'Welcome!')
    end
end


class User < ApplicationRecord
    after_create :send_welcome_mail
  
    private
  
    def send_welcome_mail
      UserMailer.welcome(self).deliver_later
    end
end


UserMailer.welcome(self).deliver_now

UserMailer.welcome(self).deliver_later


class UsersCleanJob < ApplicationJob
    queue_as :default
  
    def perform(*args)
      # Do something later
    end
end


class GuestsCleanupJob < ApplicationJob
    queue_as :default
  
    around_perform :around_cleanup
  
    def perform
      # Do something later
    end
  
    private
      def around_cleanup
        # Do something before perform
        yield
        # Do something after perform
      end
end