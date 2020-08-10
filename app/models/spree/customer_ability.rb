class Spree::CustomerAbility
    include CanCan::Ability

    def initialize(user)
        if user.respond_to?(:has_spree_role?) && user.has_spree_role?('customer')
          @customer_id = user.customer.id
          can :manage, :all
          apply_permissions
          apply_order_permissions
          # apply_product_permissions

        end
    end


    private
  
    def apply_permissions
      SpreeCustomer.clientized_models.each do |model|
        cannot :display, model
        can :manage, model, customer_id: @customer_id
        can :create, model
      end
    end
  
    def apply_order_permissions
      cannot :create, Spree::Order
      can [:admin, :index, :edit, :update, :cart], Spree::Order, line_items: { product: { vendor: { customer_id: @customer_id } } }
    end
  
    def apply_product_permissions
      cannot :display, Spree::Product
      can :manage, Spree::Product, vendor: {customer_id: @customer_id}
      can :create, Spree::Product
    end
    
    

end