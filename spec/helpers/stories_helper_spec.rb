require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the StoriesHelper. For example:
#
# describe StoriesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe StoriesHelper do

  let(:story) { Fabricate(:story) }

  describe '#risk_of'

    it 'should print low risk' do
      helper.risk_of(story).should eq '<span class="muted">Низкий</span>'
    end

    it 'should print medium risk' do
      story.medium_risk!
      helper.risk_of(story).should eq '<span class="text-warning">Средний</span>'
    end

    it 'should print hight risk' do
      story.hight_risk!
      helper.risk_of(story).should eq '<span class="text-error">Высокий</span>'
    end

    it 'should print unknown risk' do
      story.risk_cd = 100
      helper.risk_of(story).should eq '<b>unknown risk</b>'
    end

  describe '#status_of'

    it 'should print new status' do
      helper.status_of(story).should eq '<span class="text-warning">Новый</span>'
    end

    it 'should print in progress' do
      story.in_progress!
      helper.status_of(story).should eq '<span class="text-info">В работе</span>'
    end

    it 'should print in finished' do
      story.finished!
      helper.status_of(story).should eq '<span class="text-success">Закончено</span>'
    end

    it 'should print in delivered' do
      story.delivered!
      helper.status_of(story).should eq '<span class="text-success">Проверено</span>'
    end

    it 'should print in rejected' do
      story.rejected!
      helper.status_of(story).should eq '<span class="text-warning">Не принято</span>'
    end

    it 'should print in accepted' do
      story.accepted!
      helper.status_of(story).should eq '<span class="muted">Принято</span>'
    end

    it 'should print in accepted' do
      story.status_cd = 100
      helper.status_of(story).should eq '<b>unknown state</b>'
    end
end
