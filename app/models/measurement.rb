class Measurement < ActiveRecord::Base
  attr_accessible :accel_x, :accel_y, :accel_z, :force, :time, :tamp_id
  
  belongs_to :tamp
end
