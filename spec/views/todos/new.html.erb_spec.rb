require 'rails_helper'

RSpec.describe "todos/new", type: :view do
  before(:each) do
    assign(:todo, Todo.new(
      title: "MyString",
      position: 1,
      is_done: false
    ))
  end

  it "renders new todo form" do
    render

    assert_select "form[action=?][method=?]", todos_path, "post" do

      assert_select "input[name=?]", "todo[title]"

      assert_select "input[name=?]", "todo[position]"

      assert_select "input[name=?]", "todo[is_done]"
    end
  end
end
