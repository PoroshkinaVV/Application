class Desk < ActiveRecord::Base
  belongs_to :auditory
  has_one :desk_geometry
  has_many :computers

  validates :name, presence: true
  validates :auditory_id, presence: true
end
