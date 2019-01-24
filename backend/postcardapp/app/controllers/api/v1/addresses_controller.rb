class Api::V1::AddressesController < ApplicationController
    def index
        @addresses = Address.all
        render json: @addresses, status: :accepted 
    end


    def create 
        @address = Address.new(address_params)
        if @address.save
            render json: @address, status: :accepted
        else
            render json: {errors: @address.errors.full_messages}, status: :unprocessible_entity
            
        end
    end

    def update
        @address = Address.update(address_params)
        if @address.save
            render json: @address, status: :accepted
        else
            render json: {errors: @address.errors.full_messages}, status: :unprocessible_entity
            
        end
    end

    private
    def address_params
        params.permit(:street, :city, :state, :zip)
    end

end
