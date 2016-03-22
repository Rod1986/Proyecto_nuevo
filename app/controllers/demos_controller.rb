class DemosController < ApplicationController
  
  before_action:get_data

  def index
  end

  def about
  end

  def contact
    render layout:'landing'
  end

  def show
    @users = User.all
  end

  def save_user
    if params[:name].present? && params[:lastname].present? && params[:age].present?
       # Puede ser Student.create para que se grabe automáticamente
      User.new(
        name: params[:name],
        lastname: params[:lastname],
        age: params[:age]
        ).save
      redirect_to demos_index_path, notice: 'User submited'
     else
      flash[:alert] = 'Please fill the required information'
      render :index
     end
  end

  protected
  
  def get_data
    @users = ['hola','chao']
  end
end
