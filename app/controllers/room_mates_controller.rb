class RoomMatesController < ApplicationController
  before_action :is_login?
  
  def new
    @room_mate = RoomMate.new
  end
  
  def create
    @room_mate = RoomMate.new(params_room_mates)
    @room_mate.user_id = current_user.id
    if @room_mate.save
      flash[:notice] = "Room Mate has been successfully created."
      redirect_to room_mates_path
    else
      render "new"
    end
  end
  
  def index
    @room_mates = current_user.room_mates
  end
  
  def edit
    
  end
  
  def show
    
  end
  
  private
  
  def params_room_mates
    params.require(:room_mates).permit!
  end
end
