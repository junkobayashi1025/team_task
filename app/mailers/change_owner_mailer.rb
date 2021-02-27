class ChangeOwnerMailer < ApplicationMailer

  def change_owner_mailer(user, team)
    @user = user
    @team = team
    mail to: @user.email, subject: '権限移動のお知らせメール'
  end
end
