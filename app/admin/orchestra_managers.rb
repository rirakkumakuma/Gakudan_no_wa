ActiveAdmin.register OrchestraManager do
 permit_params :leader

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :member_id, :orchestra_id, :leader
  #
  # or
  #
  # permit_params do
  #   permitted = [:member_id, :orchestra_id, :leader]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
