class LinksController < ApplicationController
    def index
      @links = Link.all
    end
    
    def new
      @link=Link.new
    end
    
    def create
      link = Link.new(link_params)
      link.user_id = current_user.id
      link.save
       redirect_to links_path
    end
    
    def show
    end
    
  private

    def link_params
      params.require(:link).permit(:title,:url,:body,:color)
    end

    
end
