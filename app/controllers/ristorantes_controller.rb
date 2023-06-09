class RistorantesController < ApplicationController
    
    
    def index 
        restaurants = Ristorante.all 
        render json: restaurants
    end

    def show 
        restaurant = Ristorante.find_by(id: params[:id])
        render json: restaurant
    end

    def update 
        restaurant = Ristorante.find_by(id: params[:id])
        if restaurant
            restaurant.update(restaurant_params)
            render json: restaurant
        else
            restaurant_not_found
        end
    end

    def create 
        restaurant = Ristorante.create(restaurant_params)
        if restaurant.valid?
            render json: restaurant, status: :created
        else
            render json: { errors: restaurant.errors.full_messages }, status: :unprocessable_entity
        end
        
    end

    def destroy
        restaurant = Ristorante.find_by(id: params[:id])
        if restaurant
            restaurant.destroy
            head :no_content
        else
            restaurant_not_found    
        end
    end

    private 

    def restaurant_params 
        params.permit(:name, :email, :location_id)
    end

    def restaurant_not_found 
        render json: { message: "Restaurant not found" }, status: :not_found 
    end
end

