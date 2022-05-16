class OrchestrasController < ApplicationController

  def new
     @orchestra = Orchestra.new
  end

  def create
    @orchestra = Orchestra.new(orchestra_params)
    @orchestra.members << current_member
    # current_member.update_attributes(OrchestraManager.leader:true)
    @orchestra.save
    current_member.orchestra_managers.where(orchestra: @orchestra).first.update_attributes(leader:true)
    redirect_to request_complete_path
  end

  def complete
  end

  def show
    @orchestra = Orchestra.find(params[:id])
  end

  def index
    @orchestras = OrchestraManager.all
  end

  def orchestra_params
    params.require(:orchestra).permit(:orchestra_name)
  end

end
