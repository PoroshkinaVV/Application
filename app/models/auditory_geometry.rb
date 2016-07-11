class AuditoryGeometry < ActiveRecord::Base
  belongs_to :auditory

  validates :a_coordinates, presence: true
  validates :auditory_id, presence: true

	def a_coordinates_array=(value)
	  unless value.nil?
	    self.a_coordinates = '(' + value.map{ |p| '(' + p.join(',') + ')' }.join(',') + ')'
	  else
	    self.a_coordinates = nil
	  end
	end

	def a_coordinates_array
	  unless self.a_coordinates.nil?
	    tmp = self.a_coordinates[1..-2]
	    tmp.split('),(').map{ |x| x.gsub(/[\(\)]/, '').split(',').map(&:to_i) }
	  else
	    nil
	  end
	end
end
