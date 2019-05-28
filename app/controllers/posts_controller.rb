class PostsController < ApplicationController

    def def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id # assign post to user who created.
        respond_to do |f|
            if(@post.save)
                f.html { redirect_to "", Notice: "Post created!" }
            else
                f.html { redirect_to "", notice: "Error, post not saved."}
       end
    end 
end

    private
    def post_params #allow certain data to be passed in form
        params.require(:post).permit(:user_id, :content)
end
end
