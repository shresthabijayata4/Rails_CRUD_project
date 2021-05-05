class PostsController < ApplicationController
    def index
        
        if user_signed_in?
      
        @posts =  Post.published.where(user_id: current_user.id)
        
        else

        @posts = Post.all
        end
    end

    def unpublished
        if user_signed_in?
      
            @posts =  Post.unpublished.where(user_id: current_user.id)
            
         
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
 
        post = Post.new(post_params)
        
        if post.valid?
            post.save
            redirect_to "/"
        else
            flash[:errors] = post.errors.full_messages
        end
        
    end

    def edit
        @post = Post.find(params[:id])

    end
    def update
        post = Post.find(params[:id])
        post.update(post_params)
        redirect_to "/"
    end
    def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to "/"
    end


    private

    def post_params
        params.require(:post).permit(:title, :body, :publish, :cover_filename, :user_id)
    end
end
