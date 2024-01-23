class RoomsController < ApplicationController
    before_action :set_room, only: %i[ show edit update destroy ]

    def index
        @rooms = Room.all
    end

    def show
    end

    def new
        @room = Room.new
    end

    def create
        @room = Room.new(rooms_params)

        if @room.save
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
    end

    def update
        if @room.update!(rooms_params)
            redirect_to root_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @room.destroy

        redirect_to root_path
    end

    private
    def set_room
        @room = Room.find(params[:id])
    end

    def rooms_params
        params.require(:room).permit(:name, :capacity)
    end
end
