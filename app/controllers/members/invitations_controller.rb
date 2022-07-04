# frozen_string_literal: true

module Members
  class InvitationsController < Devise::InvitationsController
    def new
      super
      @orchestra = current_member.orchestra_managers.where(leader: true)
    end

    def create
      super
      @orchestra = Orchestra.find(params[:member][:orchestra_id])
      @orchestra.members << resource
      flash[:notice] = '招待メールを送信いたしました'
      members_my_page_path
    end

    def edit
      super
      members_my_page_path
    end

    def update
      super
    end

    def destroy
      super
    end

    def member_params
      params.require(:member).permit(:last_name, :first_name, :last_name_kana, :first_name_kana)
    end
  end
end
