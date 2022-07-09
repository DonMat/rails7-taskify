FactoryBot.define do
  factory :todo do
    title { "MyString" }
    position { 1 }
    is_done { false }
  end
end
