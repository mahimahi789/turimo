class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_item, only: [:edit, :update, :show, :destroy, :search]
  before_action :move_to_index, only: [:update, :edit, :destroy]
  before_action :move_index, except: [:index, :show, :search]

  

  def index
    @items = Item.includes(:user).order("created_at DESC")
  end

  def new 
    @item =Item.new
  end


  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @messages = Message.all
    @message = Message.new
    #@messages = @item.messages.includes(:user)
  end

  def search
    @items = Item.search(params[:keyword])
  end

  def edit
  end

  def update
    @item.update(item_params)
    if @item.save
      redirect_to item_path
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def item_params
    params.require(:item).permit(:item_name,:item_description,:category_id,:use_id,:price,:marker_id, :image).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_to_index
    if current_user != @item.user
      redirect_to root_path
    end
  end

  def move_index
   unless user_signed_in?
      redirect_to action: :index
    end
  end


end