class ComputerGeometry < ActiveRecord::Base
  belongs_to :computer

  validates :c_coordinates, presence: true
  validates :front_point, presence: true
  validates :computer_id, presence: true

  def c_coordinates_array=(value)
    unless value.nil?
      self.c_coordinates = '(' + value.map{ |p| '(' + p.join(',') + ')'}.join(',') + ')'
    else
      self.c_coordinates = nil
    end
  end

  def c_coordinates_array
    unless self.c_coordinates.nil?
      tmp = self.c_coordinates[1..-2]
      tmp.split('),(').map{ |x| x.gsub(/[\(\)]/, '').split(',').map(&:to_i) }
    else
      nil
    end
  end
end
