class Building < ActiveRecord::Base
  has_many :floors
  
  validates :name, presence: true
end
