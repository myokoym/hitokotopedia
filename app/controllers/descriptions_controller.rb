class DescriptionsController < ApplicationController
  def index
    @id = params[:id]
    @descriptions = Description.by_subject_id(@id).recent
    @description = Description.new
  end

  def show
    @id = params[:id]
    @descriptions = Description.by_subject_id(@id).recent
    @description = Description.new
    render :index
  end

  def create
    unless params[:description]
      redirect_to :index
    end
    @subject = Subject.find_by_name(params[:description][:subject])
    unless @subject
      @subject = Subject.create(name: params[:description][:subject])
    end
    @description = Description.create(description: params[:description][:description], subject_id: @subject.id)
    redirect_to @subject
  end
end
