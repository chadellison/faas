class CreateFunctions < ActiveRecord::Migration[6.0]
  def change
    create_table :functions do |t|
      t.string :guid
      t.text :method
      t.timestamps
    end
  end
end
