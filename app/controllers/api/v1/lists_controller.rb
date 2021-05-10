class Api::V1::ListsController < ApplicationController

    before_action :set_user
    
    def index
        @lists = List.all
        render json: @lists 
    end

    def create
        @list = List.new(list_params)
        if @list.save
            render json: @list
        else
            render json: {error: 'Error creating list'}
    end

    def show
        @list = List.find(params[:id])
        render json: @list
    end

    def destroy
        @list = List.find(params[:id])
        @list.destroy
    end

    private

    def set_user
        @user = User.find(params[:user_id])
    end


    def list_params
        params.require(:list).permit(:user_id, :genre, :kind, :date)
    end
    

end
