class UsersController < ApplicationController

    def new
        @user =User.new
        #redirect_to(controller: stations, action: index )
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "User created."
            redirect_to root_path
        else
            render 'new'
        end
    
    end

    def edit
        if logged_in?
            redirect_to login_path
         else
            #let them change the mode
        end
    
    end
     
    private
 
    def user_params
        params.require(:user).permit(:username, :password)
    end

end