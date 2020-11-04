class SearchesController < ApplicationController
  def index
    if params[:query].start_with?('#')
      query = params[:query].gsub('#', '')
      @posts = Post.joins(:hashtags).where(hashtags: {name:query})
    else
      @posts = Post.where("content like ?", "%#{params[:query]}%")
    end
  end
end
