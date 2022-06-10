class InstrumentsController < ApplicationController
  def index
    @orchestra = Orchestra.find(params[:orchestra_id])
    @instrument = Instrument.new(orchestra_id: params[:orchestra_id])
  end

  def create
    if current_member.orchestra_managers.where(leader: true, orchestra_id: params[:orchestra_id]).exists?
      @orchestra = current_member.orchestra_managers.where(leader: true, orchestra_id: params[:orchestra_id]).first.orchestra
      @orchestra.instruments.create!(instrument_params)
      redirect_to orchestra_instruments_path(@orchestra.id)
    else
      render :index
    end
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def join
    @instrument = Instrument.find(params[:id])
    @instrument.members << current_member
    @instrument.save
    redirect_to orchestra_instrument_path(orchestra_id: @instrument.orchestra_id, id: @instrument.id)
  end

  def edit
   if current_member.orchestra_managers.where(leader: true).exists?
    @instrument = Instrument.find(params[:id])
   else
    render :index
   end
  end

  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(instrument_params)
    redirect_to orchestra_instruments_path(@instrument.orchestra_id)
  end

  def disjoin
    @instrument = Instrument.find(params[:id])
    @instrument.members.delete(current_member)
    redirect_to orchestra_instrument_path(orchestra_id: @instrument.orchestra_id, id: @instrument.id)
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
