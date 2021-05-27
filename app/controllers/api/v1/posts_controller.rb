class Api::V1::PostsController < ApplicationController

    before_action :set_user
    
    def index
        @posts = @user.posts
        render json: @posts 
    end

    def create
        @post = @user.post.new(post_params)
        if @post.save
            render json: @post
        else
            render json: {error: 'Error creating post'}
    end

    def show
        @post = @user.posts.find_by(id: params[:id])
        render json: @post
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
    end

    private

    def set_user
        @user = User.find(params[:user_id])
    end


    def post_params
        params.require(:post).permit(:user_id, :genre, :kind, :date)
    end
    

end
