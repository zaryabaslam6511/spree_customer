Spree::Admin::ResourceController.class_eval do
	before_action :set_customer_id, only: [:create, :update]
	
  def set_customer_id
    return unless current_spree_customer
    return if request.put? && resource.object_name == 'reimbursement_type'
    class_name_of_object = "Spree::" + resource.object_name.titleize.delete(' ')
    params[resource.object_name.to_sym][:customer_id] = current_spree_customer&.id if class_name_of_object.constantize.column_names.include? 'customer_id'
  end
end