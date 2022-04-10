class RequestMailer < ApplicationMailer

  def send_mail(request)
    @request = request
    mail(
      from: 'system@example.com',
      to: 'keikoyamazaki0703+admin@gmail.com',
      subject: '申請依頼'
    )
  end
end
