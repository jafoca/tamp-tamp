class Tamp < ActiveRecord::Base
  attr_accessible :file

  has_many :measurements, :dependent => :destroy

	def self.import(file)
		@tamp = Tamp.create
	  CSV.foreach(file.path, {:headers => true, :header_converters => :symbol}) do |row|
	    #Product.create! row.to_hash
	    Measurement.create!( :time => row[:time_ms], :force => row[:force], 
                       :accel_x => row[:accelx], :accel_y => row[:accely], :accel_z => row[:accelz], :tamp_id => @tamp.id )
	  end
	end

end
