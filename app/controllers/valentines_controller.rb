class ValentinesController < ApplicationController

  def new
    @valentine = Valentine.new
  end

  def create
    @valentine = Valentine.new(valentine_params)

    if @valentine.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def valentine_params
    params.require(:valentine).permit(:from, :message)
  end

end
