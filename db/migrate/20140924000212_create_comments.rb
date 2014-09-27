class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :questions
      t.text :comments

      t.timestamps
    end
  end
end
