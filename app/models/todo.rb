class Todo < ApplicationRecord
  acts_as_list

  validates :title, presence: true
end
