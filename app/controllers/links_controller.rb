class LinksController < ApplicationController
    def index
      @links = Link.all
    end
    
    def new
      @link = Link.new
      @linktag = LinkTag.new
      @linktags = LinkTag.all
      @tag = Tag.new #タグをユーザーに持たせるか
      @tags = Tag.where(user_id: current_user)
    end
    
    def create
      link = Link.new(link_params)
      link.user_id = current_user.id
      link.save
    end
    
    def show
    end
    
  private

    def link_params
      params.require(:link).permit(:title,:url,:body,:color)
    end

    
end
