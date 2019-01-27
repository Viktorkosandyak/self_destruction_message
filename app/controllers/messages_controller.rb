class MessagesController < ApplicationController

  def index
      @message = Message.all
  end

  def show
      binding.pry
      @message = Message.find_by(params[:uuid])
  end

  def new
      @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to @message
    else
      render :new
    end
 end

  private

  def message_params
    params.require(:message).permit(:body,:link)
  end

end
