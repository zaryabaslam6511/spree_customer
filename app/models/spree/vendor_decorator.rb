Spree::Vendor.class_eval do
    clear_validators!
  
    validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :customer_id }
    
  end