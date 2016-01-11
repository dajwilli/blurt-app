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

  def destroy
    @blurt = Blurt.find(params[:id])
    @blurt.destroy
    head :no_content
  end

  def likes
    @likes = BlurtLike.where(blurt_id: params[:id])
    render json: @likes
  end

  def like_blurt
    @blurt_like = BlurtLike.new(blurt_id: params[:id])
      if @blurt_like.save
        render json: @blurt_like
      else
        render json: @blurt_like.errors, status: :unprocessable_entity
      end
      puts @blurt_like.errors
  end

  private
  def blurt_params
    params.require(:blurt).permit(:message)
  end
end
