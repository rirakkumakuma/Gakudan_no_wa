# frozen_string_literal: true

ActiveAdmin.register Orchestra do
  permit_params :orchestra_name, :approve_flag

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :orchestra_name, :member_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:orchestra_name, :member_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
