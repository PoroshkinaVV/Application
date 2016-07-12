class Floor < ActiveRecord::Base
  belongs_to :building
  has_many :auditories
  has_one :floor_geometry

  validates :number, presence: true
  validates :building_id, presence: true
end
