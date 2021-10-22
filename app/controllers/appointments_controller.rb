class AppointmentsController < ApplicationController
  before_action :require_login

  def new
    @appointment = Appointment.new
    @all_trainers = Trainer.all
    @all_clients = Client.all
  end
    
  def create
    @appointment = Appointment.new(appointment_params)
      if @appointment.save
        redirect_to trainer_path(@appointment.trainer)
      else
        @all_trainers = Trainer.all
        @all_clients = Client.all
        flash[:success] = "Appointment could not be created"
        render :new
    end
  end

  def index
    @appointments = Appointment.all
  end
  
  def show 
    @appointment = Appointment.find(params[:id])
  end

  def edit
    @appointment = Appointment.find(params[:id])
    @all_trainers = Trainer.all
    @all_clients = Client.all
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    redirect_to trainer_path(@appointment.trainer)
  end


  def destroy
    @appointment = Appointment.find(params[:id])
    @trainer = @appointment.trainer
    @appointment.destroy
    redirect_to trainer_path(@trainer)
  end
    
    private
    
  def appointment_params
    params.require(:appointment).permit(:client_id, :trainer_id, :workout, :date, :timeslot)
  end

  def require_login
    redirect_to login_path unless session.include? :user_id
  end

  # def set_appointment
  #     @appointment = Appointment.find(params[:id])
  # end
end