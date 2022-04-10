class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.save
    RequestMailer.send_mail(@request).deliver
    redirect_to root_path
  end

  private

  def request_params
    params.require(:request).permit(:name,:email,:message,:orchestra_name)
  end

end
