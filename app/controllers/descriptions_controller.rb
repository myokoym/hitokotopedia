class DescriptionsController < ApplicationController
  def index
    @id = params[:id]
    @descriptions = Description.find(:all, :conditions => "subject_id = #{@id}", :order => "updated_at desc", :limit => 10)
    @description = Description.new
  end

  def show
    @id = params[:id]
    @descriptions = Description.find(:all, :conditions => "subject_id = #{@id}", :order => "updated_at desc", :limit => 10)
    @description = Description.new
    render :index
  end

  def create
    @subject = Subject.find_by_name(params[:description][:subject])
    unless @subject
      @subject = Subject.create(:name => params[:description][:subject])
    end
    @description = Description.create(:description => params[:description][:description], :subject_id => @subject.id, :author_id => 1)
    redirect_to @subject
  end
end
