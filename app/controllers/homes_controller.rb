class HomesController < ApplicationController

  def top
  end

  def request_form
     @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.save
    redirect_to request_complete_path
  end

  def complete
  end

  def request_params
    params.require(:request).permit(:orchestra_name)
  end

end
