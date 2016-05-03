class Wolf < ActiveRecord::Base
  validates :picture_url, presence: {message: "You need a profile picture URL"}

  def howl_count
    howls.count
  end

  def howls
    []
  end
end
