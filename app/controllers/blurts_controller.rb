class BlurtsController < ApplicationController
  def index
    @blurts = Blurt.all
  end

  def create
    @blurt = Blurt.new(blurt_params)

    if @blurt.save
      render json: @blurt
    else
      render json: @blurt.errors, status: :unprocessable_entity
    end
  end

  private
  def blurt_params
    params.require(:blurt).permit(:message)
  end
end
