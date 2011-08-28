class ContentsController < ApplicationController
def index
    @descriptions = Description.find(:all, :order => "updated_at DESC", :limit => 10)
    @description = Description.new
  end

  def create
    p "SubjectOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO"
    p params
    @subject = Subject.find_by_name(params[:description][:subject])
    p "SubjectOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO"
    unless @subject
      @subject = Subject.create(:name => params[:description][:subject])
    end
    params[:description][:subject] = @subject.id
    p params
    @description = Description.create(params[:description])
    redirect_to
  end
end
