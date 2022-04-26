class OrchestrasController < ApplicationController
  
  def new
     @orchestra = Orchestra.new
  end

  def create
    @orchestra = Orchestra.new(orchestra_params)
    @orchestra.save
    redirect_to request_complete_path
  end

  def complete
  end
  
  def index
    @orchestras = Orchestra.all
  end
  
  def orchestra_params
    params.require(:orchestra).permit(:orchestra_name)
  end

end
