class StoriesController < ApplicationController
  def index
    
    if terms = params[:search] 
      @stories = Story.basic_search(terms)
    else  
      @stories = Story.all
    end

  end

  def create
    
  end
end
