class DescriptionsController < ApplicationController
 def index
    @descriptions = Description.all
    @description = Description.new
  end

  def create
    @description = Description.create(params[:description])
    redirect_to
  end
end
