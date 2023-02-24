class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks #When you delete a list, you should delete all associated bookmarks
  has_one_attached :photo
end
