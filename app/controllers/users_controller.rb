class UsersController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response


     # GET /users
    def index
        #get users
        render json: User.all, status: :ok
    end 
    
    

     # GET /users/{id}
    def show
        #check if user is present
        user = find_user
        #return user
        render json: user
    end

    #putch
    def update
        user = find_user
        if user.valid?
            user.update(user_params)
            render json: user
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

  

    def create
        user = User.create!(user_params)
        if user.valid?
          render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

   # DELETE
   def destroy
    # check whether the task exists
    user = User.find_by(id:params[:id])
   
   #  delete the task
   if user
       user.destroy
       head :no_content
   #  return a not found user
   else 
       render json: {error: 'User not found'}, status: not_found
   end
   end


    
    private

    def user_params
        params.permit(:username, :password, :email)
    end

    def find_user
        User.find(params[:id])
    end

    def record_not_found_response(exception)
        render json: { error: "User not found" }, status: :not_found
    end


end
