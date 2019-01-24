class Api::V1::PostcardsController < ApplicationController

    def index
        @postCards = Postcard.all
        render json: @postCards
    end

    def show
        @postCard = Postcard.find(params[:id])
        render json: @postCard
    end

    def new   
    end

    def create 
        @postCard = Postcard.new(postcard_params)
        if @postCard.save
            render json: @postCard, status: :accepted
        else
            render json: {errors: @postCard.errors.full_messages}, status: :unprocessible_entity
            
        end
    end

    def update 
        @postCard = Postcard.update(postcard_params)
        if @postCard.save
            render json: @postCard, status: :accepted
        else
            render json: {errors: @postCard.errors.full_messages}, status: :unprocessible_entity
            
        end
    end

    def destroy
        @postCards = Postcard.all
        @postCard =  Postcard.find(params[:id])
        if @postCard.destroy
            render json: @postcards, status: :accepted
        else
            render json: {errors: @postCard.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def postcard_params
        params.permit(:message, :name, :address_id, :state_id, :url)
    end
end
