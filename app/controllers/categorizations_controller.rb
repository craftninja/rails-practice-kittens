class CategorizationsController < ApplicationController

  def new
    @kitten = Kitten.find(params[:kitten_id])
    @categorization = Categorization.new
  end

  def create
    @categorization = Categorization.new(kitten_id: params[:kitten_id], category_id: params[:categorization][:category_id])
    if @categorization.save
      redirect_to :root
    else
      @kitten = Kitten.find(params[:kitten_id])
      render :new
    end
  end

end
