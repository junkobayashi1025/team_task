class ChangeOwnerMailer < ApplicationMailer

  def change_owner_mail(email, team)
    @email = email
    @team = team
    mail to: @email, subject: '権限移動のお知らせメール'
  end
end
