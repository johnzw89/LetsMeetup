class ReservationMailer < ActionMailer::Base
  default from: 'johnzw89@gmail.com'

  def registration_confirmation(restaurant, reservation)
    @restaurant = restaurant
    @reservation = reservation
    mail(:to => reservation.email, :subject => "Reservation")
  end

end
