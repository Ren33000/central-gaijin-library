class Booking < ApplicationRecord
  belongs_to :book
  belongs_to :user
  enum status: { accepted: 0, rejected: 1, pending: 2 }

  validates :start_date, :end_date, presence: true
  validate :validate_other_booking_overlap

  def period
    start_date..end_date
  end

  private

  # def validate_other_booking_overlap
  #   other_bookings = Booking.all
  #   is_overlapping = other_bookings.any? do |other_booking|
  #     period.overlaps?(other_booking.period)
  #     puts "running"
  #   end
  #   puts is_overlapping
  #   # errors.add(:overlaps_with_other) if is_overlapping
  # end
end
