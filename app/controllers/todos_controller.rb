class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new 
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to @todo
    else
      flash[:notice] = "エラー"
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
  end

  private

  def todo_params
    params.require(:todos).permit(:title, :completed)
  end

end
