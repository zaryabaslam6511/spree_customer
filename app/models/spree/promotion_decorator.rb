Spree::Promotion.class_eval do
    clear_validators!
    validates :path, :code, uniqueness: { case_sensitive: false, allow_blank: true, scope: :customer_id }

end