class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => :destroy
  
  def new
    @user = User.new
    @title = "Sign Up"
  end
  
  def index
     @title = "Usuarios"
     @users = User.order("name ASC").paginate(:page => params[:page])
   end
  
   def show
      @user = User.find(params[:id])
      @microposts = @user.microposts.paginate(:page => params[:page])
      @title = @user.name
    end

   def create
      @user = User.new(params[:user])
      if @user.save
        sign_in @user
        flash[:success] = "Bem vindo ao mini twitter ! xD"
        redirect_to @user
      else
        @title = "Sign up"
        render 'new'
      end
    end
    
  def edit
    @user = User.find(params[:id])
    @title = "Editar usurario"
  end  
  
  def update
      @user = User.find(params[:id])
      if @user.update_attributes(params[:user])
        flash[:success] = "Perfil atualizado"
        redirect_to @user
      else
        @title = "Editar usuario"
        render 'edit'
      end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Usuario destruido"
    redirect_to users_path
  end
  
  def following
     @title = "Seguindo"
     @user = User.order("name ASC").find(params[:id])
     @users = @user.following.paginate(:page => params[:page])
     render 'show_follow'
   end

   def followers
     @title = "Seguidores"
     @user = User.order("name ASC").find(params[:id])
     @users = @user.followers.paginate(:page => params[:page])
     render 'show_follow'
   end
  
    
    private

        def authenticate
          deny_access unless signed_in?
        end    
        
        def correct_user
          @user = User.find(params[:id])
          redirect_to(root_path) unless current_user?(@user)
        end
        
        def admin_user
          redirect_to(root_path) unless current_user.admin?
        end
end
