class BlurtsController < ApplicationController
  def index
    @blurts = Blurt.all
  end
end
