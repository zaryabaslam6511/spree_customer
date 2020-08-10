Spree::Admin::StoresController.class_eval do
    private
      def load_payment_methods
        @payment_methods = (defined?(current_spree_customer) && current_spree_customer) ? current_spree_customer.payment_methods :  Spree::PaymentMethod.all
      end
      
      def load_shipping_methods
        @shipping_methods = (defined?(current_spree_customer) && current_spree_customer) ? current_spree_customer.shipping_methods :  Spree::ShippingMethod.all
      end
  
  end