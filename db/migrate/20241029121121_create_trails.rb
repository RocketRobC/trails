class CreateTrails < ActiveRecord::Migration[8.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :grade
      t.timestamps

    end
  end
end
