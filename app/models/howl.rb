class Howl < ActiveRecord::Base
  belongs_to :wolf

  validates :wolf, presence: {message: "You have to indicate who's howling"}
end
