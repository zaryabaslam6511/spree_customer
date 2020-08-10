Spree::Role.class_eval do
	clear_validators!
	validates :name, presence: true, uniqueness: { case_sensitive: false, allow_blank: true, scope: :customer_id }
	
end