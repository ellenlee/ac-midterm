class Disaster < ActiveRecord::Base
  validates_presence_of :info_id
  # 如果沒有驗證，index 裡的 disaster.info.name 就會壞掉

  belongs_to :user
  belongs_to :info
  has_many :comments
end
