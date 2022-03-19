class MessagesController < ApplicationController

    def new 
      @room = Room.find(params[:room_id])
      @message = @room.messages.new
    end

    def create 
      @room = Room.find(params[:room_id])
      @message = @room.messages.new
      @message.save

      respond_to do |format|
          format.html { redirect_to: @room }
      end
    end

    private 
       def message_params 
         params.require(:message).permite(:content)
       end
end
