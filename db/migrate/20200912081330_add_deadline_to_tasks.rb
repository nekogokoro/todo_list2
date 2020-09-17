class AddDeadlineToTasks < ActiveRecord::Migration[6.0]
  def up
    add_column :tasks, :deadline, :date
    change_column :tasks, :deadline, :date, null: false
  end

  def down
    remove_column :tasks, :deadline
  end
end
