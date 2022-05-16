ActiveAdmin.register Member do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :last_name, :first_name, :last_name_kana, :first_name_kana, :is_active, :invitation_token, :invitation_created_at, :invitation_sent_at, :invitation_accepted_at, :invitation_limit, :invited_by_type, :invited_by_id, :invitations_count
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :last_name, :first_name, :last_name_kana, :first_name_kana, :is_active, :invitation_token, :invitation_created_at, :invitation_sent_at, :invitation_accepted_at, :invitation_limit, :invited_by_type, :invited_by_id, :invitations_count]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
