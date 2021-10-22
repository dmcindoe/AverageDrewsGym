class ClientsController < ApplicationController
  before_action :require_login


  def show
    @client = Client.find(params[:id])
  end

  def index 
    @clients = Client.all
  end

  private

  def require_login
    redirect_to login_path unless session.include? :user_id
  end
end
