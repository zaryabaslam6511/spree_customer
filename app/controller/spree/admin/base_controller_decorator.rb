Spree::Admin::BaseController.class_eval do
    include Spree::Admin::CustomerHelper
    helper_method :current_spree_customer
end