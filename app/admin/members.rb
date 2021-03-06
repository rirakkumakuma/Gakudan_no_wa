# frozen_string_literal: true

ActiveAdmin.register Member do
  permit_params :is_active

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

  index do
    selectable_column
    column(:id)
    column(:email)
    column(:last_name)
    column(:first_name)
    column(:last_name_kana)
    column(:first_name_kana)
    column(:created_at)
    column(:is_active)
    column(:invited_by)
    actions
  end
end
