require 'spec_helper'

describe Story do

  it 'should creates' do
    with_params = Fabricate.attributes_for(:story)
    Story.create with_params
  end

  context 'after created'

    context { Fabricate(:story) }

    its(:new_status?) { should be_true }
    its(:low_risk?) { should be_true }

end
