#USED TO BE THIS, DONT KNOW WHY, HEROKU NO LIKEY -> class ProjectsController < InheritedResources::Base
class ProjectsController < ApplicationController


	def index
		@projects = Project.all
	end

	 def show
	   @project = Project.find(params[:id])
  	end

  	 def new
    	@project = Project.new
  	end





  private

    def project_params
      params.require(:project).permit(:title, :body, :image)
    end
end

