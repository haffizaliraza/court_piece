class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|

      t.timestamps
    end
  end
end
