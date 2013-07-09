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
  end

  def update
  end

  def destroy
  end
  
end