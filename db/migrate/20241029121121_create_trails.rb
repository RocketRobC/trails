class CreateTrails < ActiveRecord::Migration[8.0]
  def change
    create_table :trail_networks do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :postcode
      t.string :country

      t.timestamps
    end

    create_table :trails do |t|
      t.references :trail_network, foreign_key: true
      t.string :name
      t.string :grade

      t.timestamps
    end

    create_table :trail_statuses do |t|
      t.references :trail, null: false, foreign_key: true
      t.string :status
      t.text :reason

      t.timestamps
    end
  end
end
