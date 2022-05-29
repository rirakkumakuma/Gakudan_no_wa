class InstrumentsController < ApplicationController
  def index
    @orchestra = Orchestra.find(params[:orchestra_id])
    @instrument = Instrument.new(orchestra_id: params[:orchestra_id])
    @instruments = Instrument.all
  end

  def create
    @orchestra = current_member.orchestra_managers.where(leader: true, orchestra_id: params[:orchestra_id]).first.orchestra
    @orchestra.instruments.create!(instrument_params)
    redirect_to orchestra_instruments_path(@orchestra.id)
  end

  def show
    @instrument = Instrument.find(params[:id])
    @instruments = InstrumentDetail.all
  end

  def join
    @instrument = Instrument.find(params[:id])
    @instrument.members << current_member
    @instrument.save
    redirect_to orchestra_instruments_path(@orchestra.id)
  end

  def edit
    @instrument = Instrument.find(params[:id])
  end

  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(instrument_params)
    redirect_to orchestra_instruments_path(@instrument.orchestra_id)
  end
  
  def disjoin
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    @instrument.destroy
    redirect_to orchestra_instruments_path(@instrument.orchestra_id)
  end

  private
   def instrument_params
    params.require(:instrument).permit(:name)
   end
end
