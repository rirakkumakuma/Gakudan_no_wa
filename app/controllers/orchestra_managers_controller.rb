class OrchestraManagersController < ApplicationController
  def update
    @member = Member.find(params[:id])
    @orchestra = Orchestra.find(params[:orchestra_id])
    @member.orchestra_managers.where(orchestra: @orchestra).first.update_attributes(is_active:1)
    flash[:notice] = "休団処理を実行いたしました"
    redirect_to orchestra_members_path
  end

  def retire
    @member = Member.find(params[:id])
    @orchestra = Orchestra.find(params[:orchestra_id])
    @member.orchestra_managers.where(orchestra: @orchestra).first.update_attributes(is_active:2)
    flash[:notice] = "退団処理を実行いたしました"
    redirect_to orchestra_members_path
  end

  def return
    @member = Member.find(params[:id])
    @orchestra = Orchestra.find(params[:orchestra_id])
    @member.orchestra_managers.where(orchestra: @orchestra).first.update_attributes(is_active:0)
    flash[:notice] = "復団処理を実行いたしました"
    redirect_to orchestra_members_path
  end

end
