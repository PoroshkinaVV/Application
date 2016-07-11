class Computer < ActiveRecord::Base
  belongs_to :desk
  has_one :computer_geometry

  validates :name, presence: true
  validates :desk_id, presence: true
end
