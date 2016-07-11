class Building < ActiveRecord::Base
  has_one :building_geometry
  has_many :auditories

  validates :name, presence: true
end
