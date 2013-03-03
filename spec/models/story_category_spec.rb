require 'spec_helper'

describe StoryCategory do

  it 'should creates' do
    with_params = Fabricate.attributes_for(:story_category)
    StoryCategory.create with_params
  end
end