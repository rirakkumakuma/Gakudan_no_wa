class InstrumentsController < ApplicationController
  def index
   @instrument = Instrument.new
   @instruments = Instrument.all
  end

  def create
   @instrument = Instrument.new(instrument_params)
   current_member.orchestras.Instrument.create!
   @instrument.save
   redirect_to instruments_path
  end

  def show
  end

  def edit
    @instrument = Instrument.find(params[:id])
  end

  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(instrument_params)
    redirect_to instruments_path
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    @instrument.destroy
    redirect_to instruments_path
  end

  private
   def instrument_params
    params.require(:instrument).permit(:name)
   end
end
