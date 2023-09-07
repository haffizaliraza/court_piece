class CreateNewOnes < ActiveRecord::Migration[7.0]
  def change
    create_table :new_ones do |t|

      t.timestamps
    end
  end
end
