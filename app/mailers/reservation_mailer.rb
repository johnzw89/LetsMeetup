class ReservationMailer < ActionMailer::Base
  default from: 'johnzw89@gmail.com'

  def registration_confirmation(reservation)
    mail(:to => reservation.email, :subject => "Reservation")
  end

end
