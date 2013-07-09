class ListsController < ActionController::Base
  def index
    @items = List.all
  end

  def new
    @item = List.new
  end

  def create
    @item = List.new(params[:list])
      if @item.save
        redirect_to lists_path
      else
        render :new
      end
  end

  def show
    @item = List.find(params[:id])
  end

  def edit
    @item = List.find(params[:id])
  end

  def update
    @item = List.find(params[:id])
      if @item.update_attributes(params[:list])
        redirect_to list_path(@item)
      else
        render :new
      end
  end

  def destroy
    @item = List.find(params[:id])
    @item.destroy
    redirect_to lists_path
  end
  
end