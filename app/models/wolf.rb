class Wolf < ActiveRecord::Base
  validates :picture_url, presence: {message: "You need a profile picture URL"}

  has_many :howls

  def howl_count
    howls.count
  end
end
