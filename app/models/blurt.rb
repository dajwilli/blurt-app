class Blurt < ActiveRecord::Base
  has_many :blurt_likes, dependent: :destroy
end
