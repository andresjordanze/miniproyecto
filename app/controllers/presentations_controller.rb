class PresentationsController < ApplicationController

  def create
    @work = Work.find(params[:work_id])
    @presentation = @work.presentations.create(params[:presentation].permit(:name, :porcentaje_nota))
    redirect_to work_path(@work)
  end

  def index
    @presentations = Presentation.all
  end

  def destroy
    @work = Work.find(params[:work_id])
    @presentation = @work.presentations.find(params[:id])
    @presentation.destroy
    redirect_to work_path(@work)
  end
  
end
