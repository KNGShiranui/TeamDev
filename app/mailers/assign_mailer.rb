class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def agenda_destroy_mail(email)
    @email = email
    mail to: @email, subject: I18n.t('views.messages.agenda_delete')
  end
end