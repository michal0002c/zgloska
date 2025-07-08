class AdMailer < ApplicationMailer
  def new_ad_notification(ad)
    @ad = ad
    @user = ad.user
    mail(
      to: @user.email,
      subject: "Dodano nowe ogłoszenie na Zgłoska!"
    )
  end
end
