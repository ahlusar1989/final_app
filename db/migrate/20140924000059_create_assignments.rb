class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :date_assigned
      t.string :assignment_type
      t.string :due_date

      t.timestamps
    end
  end
end
