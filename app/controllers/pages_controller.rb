class PagesController < ApplicationController

  def home
     @title = "Principal"
     if signed_in?
       @micropost = Micropost.new
       @feed_items = current_user.feed.paginate(:page => params[:page])
     end
   end

  def contact
    @title = "Contatos"
  end

  def about
    @title = "Sobre"
  end
  
  def help
    @title = "Ajuda"
  end
  
end
