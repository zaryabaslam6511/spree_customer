class CreateSpreeUserCustomer < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_customers do |t|
      t.string :name
      t.string :email
    end
  end
end
