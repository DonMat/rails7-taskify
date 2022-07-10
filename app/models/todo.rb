class Todo < ApplicationRecord
  after_update_commit { broadcast_replace_to 'todos' }
  acts_as_list

  validates :title, presence: true
end
