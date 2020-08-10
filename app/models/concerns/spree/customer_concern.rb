module Spree
  module CustomerConcern
    extend ActiveSupport::Concern

    included do
      belongs_to :customer, class_name: 'Spree::Customer'
      scope :with_customer, ->(customer_id) { where(customer_id: customer_id) }
    end
  end
end
