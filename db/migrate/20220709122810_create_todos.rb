class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.integer :position, default: 1
      t.boolean :is_done, default: false

      t.timestamps
    end
  end
end
