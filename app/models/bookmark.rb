class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
  # There is a :scope option that you can use to specify one or more attributes that are used to limit the uniqueness check
  # [movie, list] pairings should be unique
end
