class RoomsController < ApplicationController
  before_action :require_login, except: [:index]
  def index
  end

  def new
    @room=Room.new
  end
  def create
    @room = Room.new(room_params)

    if(@room.save)
      redirect_to Room
    else
      render 'new'
    end
  end

  def destroy
    @room = Room.find(params[:id])

    @room.destroy

    redirect_to Room
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])

    if(@room.update(room_params))
      redirect_to Room
    else
      render 'edit'
    end
  end

  private def room_params
    params.require(:room).permit( :typ, :places, :price, :employee_id)
  end
end
