class ListsController < ActionController::Base
  def index
  end

  def new
    @item = List.new
  end

  def create
    @item = List.new(params[:id])
      if @item.save
        redirect_to lists_path
      else
        render :new
      end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
end