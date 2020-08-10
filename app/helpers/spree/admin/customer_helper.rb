module Spree
    module Admin
      module CustomerHelper
        def current_spree_customer
          if current_spree_user.customer.present?
            current_spree_user.customer
          end
        end
      end
    end
  end