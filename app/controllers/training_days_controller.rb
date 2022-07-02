class TrainingDaysController < ApplicationController
  def index
    @orchestra = Orchestra.find(params[:orchestra_id])
    @training_day = TrainingDay.new(orchestra_id: params[:orchestra_id])
    @training_days = @orchestra.training_days.order(created_at: :desc)
  end

  def create
    @orchestra = current_member.orchestra_managers.where(leader: true, orchestra_id: params[:orchestra_id]).first.orchestra
    @orchestra.training_days.create!(training_day_params)
    redirect_to orchestra_training_days_path(@orchestra.id)
  end

  def show
    @training_day = TrainingDay.find(params[:id])
    @orchestra = Orchestra.find(params[:orchestra_id])
    @member_ids = Training.where(training_day: @training_day,join_flag:true).map(&:member_id)
    @summary = @orchestra.instruments.each_with_object({}) do |instrument, hash|
    hash[instrument.name] = instrument.instrument_details.where(member_id: @member_ids).count
    end
  end

  def edit
    @training_day = TrainingDay.find(params[:id])
  end

  def update
    @training_day = TrainingDay.find(params[:id])
    @training_day.update(training_day_params)
    redirect_to orchestra_training_days_path(@training_day.orchestra_id)
  end

  def destroy
    @training_day = TrainingDay.find(params[:id])
    @training_day.destroy
    redirect_to orchestra_training_days_path(@training_day.orchestra_id)
  end

  def join
    @training_day = TrainingDay.find(params[:id])
    current_member.trainings.create!(training_day: @training_day, join_flag:true)
    redirect_to orchestra_training_day_path(orchestra_id: @training_day.orchestra_id, id: @training_day.id)
  end

  def disjoin
    @training_day = TrainingDay.find(params[:id])
    @training_day.members.delete(current_member)
    redirect_to orchestra_training_day_path(orchestra_id: @training_day.orchestra_id, id: @training_day.id)
  end



  private
   def training_day_params
    params.require(:training_day).permit(:training_day, :title, :body)
   end
end
