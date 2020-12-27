class CreateFunctions < ActiveRecord::Migration[6.0]
  def change
    create_table :functions do |t|
      t.integer :user_id
      t.text :method
      t.timestamps
    end
  end
end
