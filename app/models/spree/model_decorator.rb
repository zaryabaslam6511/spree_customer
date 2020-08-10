SpreeCustomer.clientized_models.each do |model|
    model.class_eval do
      include Spree::CustomerConcern
    end
  end
  