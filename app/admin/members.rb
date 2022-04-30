ActiveAdmin.register Member do
  permit_params :leader

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :last_name, :first_name, :last_name_kana, :first_name_kana, :is_active, :invitation_token, :invitation_created_at, :invitation_sent_at, :invitation_accepted_at, :invitation_limit, :invited_by_type, :invited_by_id, :invitations_count, :orchestra_id, :leader
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :last_name, :first_name, :last_name_kana, :first_name_kana, :is_active, :invitation_token, :invitation_created_at, :invitation_sent_at, :invitation_accepted_at, :invitation_limit, :invited_by_type, :invited_by_id, :invitations_count, :orchestra_id, :leader]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    column(:id)
    column(:last_name)
    column(:first_name)
    column(:last_name_kana)
    column(:first_name_kana)
    column(:is_active)
    column(:email)
    column(:orchestra_id)
    column(:leader)
    column(:created_at)
    column(:updated_at)
    actions
  end

end
