class UserNotifierMailer < ApplicationMailer

  def send_notification(user)
    @user = user

    mail to: @user.email, subject: "Thanks for signing up"
  end

  def send_listing_notification(user, listing)
    @user = user
    @listing = listing
    mail to: @user.email, subject: "You just posted a new listing"
  end
end
