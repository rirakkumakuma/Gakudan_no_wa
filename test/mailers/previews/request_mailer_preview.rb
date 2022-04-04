# Preview all emails at http://localhost:3000/rails/mailers/request_mailer
class RequestMailerPreview < ActionMailer::Preview
  def request
    request = Request.new(name: "山田",orchestra_name: "さいたまシティオーケストラ",message: "申請メッセージ")

    RequestMailer.send_mail(request)
  end

end
