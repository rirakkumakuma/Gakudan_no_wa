class OrchestraManagersController < ApplicationController
  def update
    @member = Member.find(params[:id])
    @orchestra = Orchestra.find(params[:orchestra_id])
    active_status = params[:is_active].to_i
    @member.orchestra_managers.where(orchestra: @orchestra).first.update_attributes(is_active: active_status)
    if active_status == 0
      flash[:notice] = "復団処理を実行いたしました"
    elsif active_status== 1
      flash[:notice] = "休団処理を実行いたしました"
    else
      flash[:notice] = "退団処理を実行いたしました"
    end
    redirect_to orchestra_members_path(@orchestra)
  end
end
