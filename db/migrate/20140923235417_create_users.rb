class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :role
      t.string :first
      t.string :last

      t.timestamps
    end
  end
end
