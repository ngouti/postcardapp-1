class Api::V1::StatesController < ApplicationController
  def index
    @states= State.all
        render json: @states
  end

  def new
  end

  def create
    @state = State.create(state_params)
    if @state.save
        render json: @state, status: :accepted
    else
        render json: {errors: @state.errors.full_messages}, status: :unprocessible_entity
    end
  end


  private

  def state_params
    params.permit(:name, :url)
  end
end
