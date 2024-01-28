class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new 
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(title: params[:title])
    if @todo.save
      redirect_to action: :index
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
  end

end
