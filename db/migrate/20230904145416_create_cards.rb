class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :suit
      t.string :face

      t.timestamps
    end
  end
end
