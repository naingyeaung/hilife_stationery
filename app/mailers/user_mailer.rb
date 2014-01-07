class UserMailer < ActionMailer::Base
  default from: "naingyeaung000@gmail.com"
  def email(name, email, content)
    @name = name
    @email = email
    @content = content
    mail(to: "naingyeaung000@gmail.com", subject: "Email from #{@name}")
  end
end
