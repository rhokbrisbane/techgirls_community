class StoriesController < ApplicationController
  def index
    if terms = params[:search]
      @stories = Story.basic_search(terms)
    else
      @stories = Story.all
    end
  end

  def create
    # send_email(@story.author_name, @story.author_email)
  end

  def send_email(to_name, to_email)
    ::EmailSender.send_email(
      from_name:  'Tech Girls are Superheroes',
      from_email: 'techgirlsaresuperheroes@gmail.com',
      to_name:    to_name,
      to_email:   to_email,
      subject:    'Your story has been posted',
      html:       render(layout: false,template: 'stories/email.html.haml').first
    )
  end
end
