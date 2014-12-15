require 'rails_helper'

RSpec.describe "tasks/edit", :type => :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :completed => false,
      :comment => "MyString",
      :attachment => "MyString"
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input#task_completed[name=?]", "task[completed]"

      assert_select "input#task_comment[name=?]", "task[comment]"

      assert_select "input#task_attachment[name=?]", "task[attachment]"
    end
  end
end
