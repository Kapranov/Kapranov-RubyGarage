require 'rails_helper'

RSpec.describe "tasks/new", :type => :view do
  before(:each) do
    assign(:task, Task.new(
      :completed => false,
      :comment => "MyString",
      :attachment => "MyString"
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_completed[name=?]", "task[completed]"

      assert_select "input#task_comment[name=?]", "task[comment]"

      assert_select "input#task_attachment[name=?]", "task[attachment]"
    end
  end
end
