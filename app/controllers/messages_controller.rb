class MessagesController < ApplicationController

    def new 
      @room = Room.find(params[:room_id])
      @message = @room.messages.new
    end

    def create 
      @room = Room.find(params[:room_id])
      @message = @room.messages.create!(message_params)
     

      respond_to do |format|
          format.html { redirect_to @room }
      end

    end

    private 
       def message_params 
         params.require(:message).permit(:content)
       end
end
