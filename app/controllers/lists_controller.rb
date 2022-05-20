class ListsController < ApplicationController
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render "list/index", status: :unprocessable_entity
    end
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
