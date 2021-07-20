class Book < ApplicationRecord
  belongs_to :user

  validates :title, uniqueness: { scope: :user_id, message: "The same book can't be added more than once by the same owner" }, presence: true
  validates :ISBN, presence: true
  validates :category, inclusion: { in: ["Kids", "Romance", "Sci-Fi and Fantasy", "Non-fiction", "Classics", "Comics", "Mystery and Crime"], allow_nil: false}, presence: true
end
