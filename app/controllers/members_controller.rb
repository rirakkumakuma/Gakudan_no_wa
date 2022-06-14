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

  def rest
    @member = current_member
    @member.update(is_active: 1)
    reset_session
    flash[:notice] = "休団処理を実行いたしました"
    redirect_to root_path
  end

  def retire
    @member = current_member
    @member.update(is_active: 2)
    reset_session
    flash[:notice] = "退団処理を実行いたしました"
    redirect_to root_path
  end

  def member_params
    params.require(:member).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :is_active)
  end
end
