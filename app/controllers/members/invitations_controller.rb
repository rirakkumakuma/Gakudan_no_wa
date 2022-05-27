class Members::InvitationsController < Devise::InvitationsController
  def new
    super
    @orchestra = Orchestra.find(params[:id])
  end

  def create
    super
    @orchestra = Orchestra.find(params[:member][:orchestra_id])
    @orchestra.members << resource
    redirect_to members_my_page_path
  end

  def edit
    super
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
