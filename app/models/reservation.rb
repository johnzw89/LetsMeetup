class Reservation < ActiveRecord::Base
  attr_accessible :email, :message, :date, :time

  validates :email, presence: true
  validates :date, presence: true
  validates :time, presence: true

  belongs_to :restaurant

end