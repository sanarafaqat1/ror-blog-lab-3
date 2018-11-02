class BlogController < ApplicationController
  def home
  end
  def list
   @posts = Blog.all
 end
  def post
    @posts =Blog.all
  end
  def show
   @posts = Blog.find(params[:id])
  end
   def new
      @posts = Blog.new
   end
  def create
   @posts = Blog.new(posts_params)

   if @posts.save
      redirect_to :action => 'post'
   else
      @posts = Blog.all
      render :action => 'new'
   end
 end

 def post_params
   params.require(:blogs).permit(:post)
 end

   def edit
    @posts = Blog.find(params[:id])
   end
   def post_param
     params.require(:blog).permit(:post)
   end

  def update
    @posts = Blog.find(params[:id])

    if @posts.update_attributes(post_params)
   redirect_to :action => 'show', :id => @posts
  else
end
end
  def delete
   Blog.find(params[:id]).destroy
   redirect_to :action => 'list'
  end
 end
