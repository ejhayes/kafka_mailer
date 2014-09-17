module KafkaMailer
  class Railtie < Rails::Railtie
    initializer "letter_opener.add_delivery_method" do
      ActiveSupport.on_load :action_mailer do
        ActionMailer::Base.add_delivery_method :kafka, KafkaMailer::DeliveryMethod, :location => Rails.root.join("tmp", "kafka_mailer")
      end
    end
  end
end
