class RestaurantNotifierJob < ApplicationJob
  queue_as :default

  def perform(customer_id)
    # Do something later
    user = User.find(customer_id)
    puts "HELLO FROM SIDEKIQ (WORKER)"
    puts "Pedido criado por #{user.email}"
  end
end
