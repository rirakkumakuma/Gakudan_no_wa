class InstrumentsController < ApplicationController
  def new
    @instrument = Instrument.new
  end

  def show
    @instrument = Instrument.find(params[:id])
    @orchestra = Orchestra.find(params[:id])

  end

  def index
    @instruments = Instrument.all
  end
end
