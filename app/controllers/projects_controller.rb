class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  
  def new 
  end

  def dashboard
    if params[:state].present?
      @projects = Project.where('state = ?', params[:state])
    else
      @projects = Project.all
    end
    
  end

  def create
    
    @project = Project.create(
      name: params[:name],
      state: params[:state],
      description: params[:description],
      starts_on: params[:starts_on],
      ends_on: params[:ends_on]
    )
  end
end
