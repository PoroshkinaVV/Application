class Auditory < ActiveRecord::Base
  belongs_to :building
  has_one :auditory_geometry
  has_many :desks

  validates :name, presence: true
  validates :building_id, presence: true
end
