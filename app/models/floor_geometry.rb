class FloorGeometry < ActiveRecord::Base
  belongs_to :floor

  validates :f_coordinates, presence: true
  validates :floor_id, presence: true

  def f_coordinates_array=(value)
	  unless value.nil?
	    self.f_coordinates = '(' + value.map{ |p| '(' + p.join(',') + ')' }.join(',') + ')'
	  else
	    self.f_coordinates = nil
	  end
	end

	def f_coordinates_array
	  unless self.f_coordinates.nil?
	    tmp = self.f_coordinates[1..-2]
	    tmp.split('),(').map{ |x| x.gsub(/[\(\)]/, '').split(',').map(&:to_i) }
	  else
	    nil
	  end
	end
end
