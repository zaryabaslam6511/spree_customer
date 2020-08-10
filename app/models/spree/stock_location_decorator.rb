Spree::StockLocation.class_eval do
	clear_validators!
	validates :name, presence: true, uniqueness: { allow_blank: true, scope: :customer_id }
	
end
