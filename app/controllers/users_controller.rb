class UsersController < ApplicationController
    # before_action :user_id, only: [:show]

    def index 
        users = User.all
        render json: users.to_json(except: [:created_at, :updated_at])
    end 

    def show
        user = User.find(params[:id])
        render json: user.to_json(except: [:created_at, :updated_at])
    end 

    # def create 
    # end 

    # def destroy
    #     user = User.find(params[:id])
    #     user.destroy
    #     render json: user.to_json(except: [:created_at, :updated_at])
    # end 

    private 

    def user_params
        params.require(:user).permit(:username, :password_digest, :email)
    end

    # def user_id
        
    # end 
end
