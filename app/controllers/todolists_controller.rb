class TodolistsController < ApplicationController
  
  def index
  	@todolists = Todolist.all
  	@newtodolist = Todolist.new
  end

  def show
  	@todolist = Todolist.find(params[:id])
  end

  def create
  	@newtodolist = Todolist.new(todolist_params)
    @newtodolist.save

    redirect_to todolists_url
  end

  def edit
  	@todolist =Todolist.find(params[:id])
  end

  def update
  	@todolist = Todolist.find(params[:id])
  	@todolist.update_attributes(todolist_params)
  	
  	redirect_to todolist_url
  end
 
  def destroy
  	@todolist = Todolist.find(params[:id])
  	@todolist.destroy

  	redirect_to todolists_url
  end

  private

  def todolist_params
    params.require(:todolist).permit(:to_do_name, :due_date, :note)
  end


end
