class Booking < ApplicationRecord
  belongs_to :book
  belongs_to :user
  enum status: { accepted: 0, rejected: 1, pending: 2 }

  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
