class DeskGeometry < ActiveRecord::Base
  belongs_to :desk

  validates :d_coordinates, presence: true
  validates :front_point, presence: true
  validates :desk_id, presence: true

	def d_coordinates_array=(value)
	  unless value.nil?
	    self.d_coordinates = '(' + value.map{ |p| '(' + p.join(',') + ')' }.join(',') + ')'
	  else
	    self.d_coordinates = nil
	  end
	end

	def d_coordinates_array
	  unless self.d_coordinates.nil?
	    tmp = self.d_coordinates[1..-2]
	    tmp.split('),(').map{ |x| x.gsub(/[\(\)]/, '').split(',').map(&:to_i) }
	  else
	    nil
	  end
	end
end
