class AgendaDestroyController < ApplicationMailer

  def when_agenda_destroy_mailer(agenda)
    @agenda = agenda
    @users = @agenda.team.users
    mail to: @users.pluck(:email), subject: 'アジェンダ削除のお知らせメール'
  end
end
