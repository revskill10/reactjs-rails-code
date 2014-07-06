class BlogsController < ApplicationController

  def index
    @blogs = Blog.all        
    render json: @blogs        
  end
  def show
    @blog = Blog.find(params[:id])
    render json: @blog
  end
  def new
  end

  def create
  	blog = Blog.new(blog_params)
  	if blog.save
  		flash[:notice] = 'Blog successfully created.'
  		render json: {:message => flash[:notice]}
  	else
  		flash[:error] = 'Error'
  		render json: flash
  	end
  end
  private
  def blog_params
  	params.require(:blog).permit(:name)
  end
end
