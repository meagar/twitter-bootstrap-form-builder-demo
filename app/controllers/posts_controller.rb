
class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to root_url
    else
      #raise params.inspect
      #raise @post.errors.messages.inspect
      render :new
    end
  end

end

