class UsersController < ApplicationController
    def new
      @user = User.new
    end
    
    def index
      @users = User.all
    end
    
    def create 
      @user = User.new(user_params) 
      if @user.save 
        session[:user_id] = @user.id 
        redirect_to '/users' 
      else 
        redirect_to '/signup' 
      end 
    end
    
    def destroy
      @user.destroy
      respond_to do |format|
        format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
    
    private
    def user_params
      params.require(:user).permit(:username, :password)
    end

end
