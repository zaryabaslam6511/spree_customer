Spree::Taxon.class_eval do
  
    clear_validators!
  
    validates :name, presence: true, uniqueness: { scope: [:parent_id, :taxonomy_id], allow_blank: true }
    validates :permalink, uniqueness: { case_sensitive: false, scope: :customer_id }

    before_save :set_customer
  
    private
    
    def set_customer
      self.customer_id = taxonomy.customer_id
    end
end