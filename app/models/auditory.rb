class Auditory < ActiveRecord::Base
  belongs_to :floor
  has_one :auditory_geometry
  has_many :desks

  validates :name, presence: true
  validates :floor_id, presence: true
end
