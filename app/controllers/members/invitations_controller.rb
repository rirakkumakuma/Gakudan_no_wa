class Members::InvitationsController < Devise::InvitationsController
  def new
    super
    @orchestra = current_member.orchestra_managers.where(leader: true)
  end

  def create
    super
    @orchestra = Orchestra.find(params[:member][:orchestra_id])
    @orchestra.members << resource
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
