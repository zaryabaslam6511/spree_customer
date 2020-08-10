Spree::Store.class_eval do
	clear_validators!
	with_options presence: true do
		validates :code, uniqueness: { case_sensitive: false, allow_blank: true, scope: :customer_id }
		validates :name, :url, :mail_from_address
	end
	
end
