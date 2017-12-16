class StoriesController < ApplicationController
  def index
    @stories = Story.all.shuffle[0..1]
  end

  def show
    @story = Story.find_by(story_num:params["id"])
  end

end
