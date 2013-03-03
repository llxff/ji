class StoryCategoriesController < ApplicationController
  def new
    @category = StoryCategory.new
  end

  def create
    StoryCategory.create params[:story_category]
    redirect_to stories_path
  end
end