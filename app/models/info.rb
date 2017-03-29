class Info < ActiveRecord::Base

  belongs_to :user
  has_many :disasters
end
