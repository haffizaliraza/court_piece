class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :table_name
      t.integer :status, default: 0 

      t.timestamps
    end
  end
end
