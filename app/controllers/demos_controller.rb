class DemosController < ApplicationController
  
  before_action:get_data

  def index
  end

  def about
  end

  def contact
    render layout:'landing'
  end

  protected
  
  def get_data
    @users = ['hola','chao']
  end
end
