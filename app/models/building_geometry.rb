class BuildingGeometry < ActiveRecord::Base
  belongs_to :building

  validates :b_coordinates, presence: true
  validates :building_id, presence: true
  
  def b_coordinates_array=(value)
    unless value.nil?
      self.b_coordinates = '(' + value.map{ |p| '(' + p.join(',') + ')' }.join(',') + ')'
    else
      self.b_coordinates = nil
    end
  end

  def b_coordinates_array
    unless self.b_coordinates.nil?
      tmp = self.b_coordinates[1..-2]
      tmp.split('),(').map{ |x| x.gsub(/[\(\)]/, '').split(',').map(&:to_i) }
    else
      nil
    end
  end
end
