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
    end

    def show
        @posts = Post.all
        render json: @posts
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
    end

    private

    def set_user
        @user = User.find(1)
    end


    def post_params
        params.require(:post).permit(:user_id, :title, :content, :date)
    end
    

end
