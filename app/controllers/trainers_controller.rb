class TrainersController < ApplicationController
  before_action :require_login

  def show
    @trainer = Trainer.find(params[:id])
  end

  def index
    @trainers = Trainer.all
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to trainer_path(@appointment.trainer)
  end
    
    private
    
  def appointment_params
    params.require(:appointment).permit(:client_id, :trainer_id, :workout, :date, :timeslot)
  end

  def require_login
    redirect_to login_path unless session.include? :user_id
  end

end
