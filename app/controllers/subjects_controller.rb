class SubjectsController < ApplicationController
  def index
    @subjects = Subject.find(:all, :order => "updated_at desc", :limit => 10)
    @description = Description.new
  end

  def show
    id = params[:id]
    @subject = Subject.find(id)
    @descriptions = Description.find(:all, :conditions => "subject_id = #{id}", :order => "updated_at desc", :limit => 10)
    @description = Description.new
  end

  def create
    @description = Description.new
    @description.description = params[:description][:description]
    @subject = Subject.find_by_name(params[:description][:subject_id])
    unless @subject
      @subject = Subject.create(:name => params[:description][:subject_id])
    end
    @description.subject = @subject
    @description = Description.create(@description)
    redirect_to @subject
  end
end
