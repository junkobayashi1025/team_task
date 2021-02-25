class AgendaDestroyMailer < ApplicationMailer

  def agenda_destroy_mailer(agenda)
    @agenda = agenda
    @members = @agenda.team.members
    mail to: @members.pluck(:email), subject: 'アジェンダ削除のお知らせメール'
  end
end
