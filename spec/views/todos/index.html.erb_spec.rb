require 'rails_helper'

RSpec.describe "todos/index", type: :view do
  before(:each) do
    assign(:todos, [
      Todo.create!(
        title: "Title",
        position: 2,
        is_done: false
      ),
      Todo.create!(
        title: "Title",
        position: 2,
        is_done: false
      )
    ])
  end

  it "renders a list of todos" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
