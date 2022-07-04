# frozen_string_literal: true

class MembersController < ApplicationController
  def index
    @orchestra = Orchestra.find(params[:orchestra_id])
  end

  def show
    @member = current_member
  end

  def edit
    @member = current_member
  end

  def update
    @member = current_member
    @member.update(member_params)
    redirect_to members_my_page_path
  end

  def member_params
    params.require(:member).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :is_active)
  end
end
