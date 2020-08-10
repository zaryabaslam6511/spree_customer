class AddCustomerToProduct < ActiveRecord::Migration[5.2]
  def change
    table_names = %w[
      products
    ]
  
    table_names.each do |table_name|
      add_reference "spree_#{table_name}", :customer, index: true
    end
  end
end
