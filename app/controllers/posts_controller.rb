class PostsController < ApplicationController
 def new
  	    @post = Post.new
        @user = User.sortuj
  end

  def create
  	  @post = Post.create :content => params[:post][:content], :user_id => params[:post][:user_id]
    if @post.save
      flash[:success] = "Dodano nowego posta"
      redirect_to @post
      
    else
      
    end
  end

  def show
    @post = Post.all
    
  end

  def add_user_f

  end


    private

    def post_params
      params.require(:post).permit(:content)
    end
end