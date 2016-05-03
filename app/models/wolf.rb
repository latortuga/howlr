class Wolf < ActiveRecord::Base
  validates :picture_url, presence: {message: "You need a profile picture URL"}
end
