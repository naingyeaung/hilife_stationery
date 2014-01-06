class UserMailer < ActionMailer::Base
  default from: "naingyeaung000@gmail.com"
  def email(name, email, content)
    @name = name
    @email = email
    @content = content
    mail(to: email, subject: "Email from #{@name}")
  end
end
