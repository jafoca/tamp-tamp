class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.integer :time
      t.integer :force
      t.integer :accel_x
      t.integer :accel_y
      t.integer :accel_z
      t.integer :tamp_id

      t.timestamps
    end
  end
end
