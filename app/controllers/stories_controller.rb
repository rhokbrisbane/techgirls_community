class StoriesController < ApplicationController
  def index
    if terms = params[:search]
      @stories = Story.basic_search(terms)
    else
      @stories = Story.all
    end
  end

  def create
    @story = Story.new(story_attributes)

    if @story.save
      send_email(@story.super_hero.name, @story.super_hero.email)
      MapAdapter.create_point(@story.super_hero.postcode)
      redirect_to root_path, notice: 'Story created successfully'
    else
      flash[:error] = "Could not create story. Please open 'Write a Story' dialog to check what went wrong."
      render :index, status: 400
    end
  end

  private

  def story_attributes
    params.require(:story).permit(:body,
                                  super_hero_attributes: [:name, :super_power, :postcode, :age, :year_at_school, :email, :phone, :archetype] )

  end

  def send_email(to_name, to_email)
    ::EmailSender.send_email(
      from_name:  'Tech Girls are Superheroes',
      from_email: 'techgirlsaresuperheroes@gmail.com',
      to_name:    to_name,
      to_email:   to_email,
      subject:    'Your story has been posted',
      html:       render_to_string(layout: false,template: 'stories/email.html.haml').first
    )
  end
end
