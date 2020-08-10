module SpreeCustomer
    module AbilityActivator
      private
      def abilities_to_register
        super << Spree::CustomerAbility
      end
    end
  end
  
  Spree::Ability.prepend SpreeCustomer::AbilityActivator