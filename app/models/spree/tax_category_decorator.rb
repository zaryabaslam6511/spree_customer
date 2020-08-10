Spree::TaxCategory.class_eval do
	clear_validators!
	validates :name, presence: true, uniqueness: { case_sensitive: false, scope: [:deleted_at, :customer_id] }
	
end