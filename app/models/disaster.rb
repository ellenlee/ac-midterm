class Disaster < ActiveRecord::Base
  belongs_to :user
  belongs_to :info
  has_many :comments
end
