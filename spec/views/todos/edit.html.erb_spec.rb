require 'rails_helper'

RSpec.describe "todos/edit", type: :view do
  before(:each) do
    @todo = assign(:todo, Todo.create!(
      title: "MyString",
      position: 1,
      is_done: false
    ))
  end

  it "renders the edit todo form" do
    render

    assert_select "form[action=?][method=?]", todo_path(@todo), "post" do

      assert_select "input[name=?]", "todo[title]"

      assert_select "input[name=?]", "todo[position]"

      assert_select "input[name=?]", "todo[is_done]"
    end
  end
end
