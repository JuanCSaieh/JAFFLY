ActiveAdmin.register Reservation do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :status, :user_id, :value, :paymentStatus, :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:status, :user_id, :value, :paymentStatus, :name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :status, :user_id, :value, :paymentStatus, :name
  
end
