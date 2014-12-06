class StoriesController < ApplicationController
  def index
    
    @stories = Story.all

  end

  def create
    
  end
end
