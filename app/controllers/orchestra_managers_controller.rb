# frozen_string_literal: true

class OrchestraManagersController < ApplicationController
  def update
    @member = Member.find(params[:id])
    @orchestra = Orchestra.find(params[:orchestra_id])
    active_status = params[:is_active].to_i
    @member.orchestra_managers.where(orchestra: @orchestra).first.update(is_active: active_status)
    flash[:notice] = if active_status == 0
                       '復団処理を実行いたしました'
                     elsif active_status == 1
                       '休団処理を実行いたしました'
                     else
                       '退団処理を実行いたしました'
                     end
    redirect_to orchestra_members_path(@orchestra)
  end
end
