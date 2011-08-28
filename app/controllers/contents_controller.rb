class ContentsController < ApplicationController
def index
    @descriptions = Description.find(:all, :order => "updated_at DESC", :limit => 10)
    @description = Description.new
  end

  def create
    @description = Description.create(params[:description])
    redirect_to
  end
end
