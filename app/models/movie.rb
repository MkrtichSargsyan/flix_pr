class Movie < ApplicationRecord
  validates :title, :duration, :released_on, presence: true
  validates :description, length: { minimum: 25 }
  validates :total_gross, numericality: { greater_than_or_equal_to: 0 }
  validates :image_file_name, format: {
    with: /\w+\.(jpg|png)\z/i,
    message: 'must be a JPG or PNG image'
  }

  RATINGS = %w[G PG PG-13 R NC-17]

  validates :rating, inclusion: { in: RATINGS }

  def self.released
    where('released_on < ?', Time.now).order('released_on desc')
  end

  def flop?
    total_gross.blank? || total_gross < 225_000_000
  end
end
