class SubjectsController < ApplicationController
  def index
    @subjects = Subject.recent
    @description = Description.new
  end

  def show
    id = params[:id]
    @subject = Subject.find_by(id: id)
    @descriptions = Description.by_subject_id(id).recent
    @description = Description.new
  end

  def create
    p params
    unless params[:description]
      redirect_to "/index"
    end
    @description = Description.new
    @description.description = params[:description][:description]
    @subject = Subject.find_by_name(params[:description][:subject_id])
    unless @subject
      @subject = Subject.create(name: params[:description][:subject_id])
    end
    @description.subject = @subject
    @description = Description.create(@description)
    redirect_to @subject
  end
end
