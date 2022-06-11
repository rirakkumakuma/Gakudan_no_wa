class TrainingDaysController < ApplicationController
  def index
    @orchestra = Orchestra.find(params[:orchestra_id])
    @training_day = TrainingDay.new(orchestra_id: params[:orchestra_id])
  end

  def create
    @orchestra = current_member.orchestra_managers.where(leader: true, orchestra_id: params[:orchestra_id]).first.orchestra
    @orchestra.training_days.create!(training_day_params)
    redirect_to orchestra_training_days_path(@orchestra.id)
  end

  def show
    @training_day = TrainingDay.find(params[:id])
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
    @training_day.members << current_member
    @training_day.save
    current_member.trainings.where(training_day: @training_day).first.update_attributes(join_flag:true)
    redirect_to orchestra_training_day_path(orchestra_id: @training_day.orchestra_id, id: @training_day.id)
  end

  def disjoin
    @training_day = TrainingDay.find(params[:id])
    @training_day.members.delete(current_member)
    redirect_to orchestra_training_day_path(orchestra_id: @training_day.orchestra_id, id: @training_day.id)
  end



  private
   def training_day_params
    params.require(:training_day).permit(:datetime, :title, :body)
   end
end
