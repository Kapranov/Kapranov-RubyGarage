require 'rails_helper'

RSpec.describe "tasks/index", :type => :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        :completed => false,
        :comment => "Comment",
        :attachment => "Attachment"
      ),
      Task.create!(
        :completed => false,
        :comment => "Comment",
        :attachment => "Attachment"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => "Attachment".to_s, :count => 2
  end
end
