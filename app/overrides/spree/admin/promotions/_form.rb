Deface::Override.new(
        virtual_path: "spree/admin/promotions/_form",
        name: "multi_customer_admin_promotion_category_on_customer_base",
		replace: "erb[loud]:contains('@promotion_categories')",
        text: <<-HTML
					<% if defined?(current_spree_customer) && current_spree_customer %>
						<%= f.collection_select(:promotion_category_id, current_spree_customer.promotion_categories, :id, :name, { include_blank: Spree.t('match_choices.none') }, { class: 'select2' }) %>
					<% else %>
						<%= f.collection_select(:promotion_category_id, @promotion_categories, :id, :name, { include_blank: Spree.t('match_choices.none') }, { class: 'select2' }) %>
          <% end %>
HTML
)