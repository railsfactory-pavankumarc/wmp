class UserMailer < ActionMailer::Base
  default from: "pavan.challa23@gmail.com"
  def welcome_email(user)
	@user = user
    @url  = 'http://www.gmail.com/login'
    attachments['pavan.jpg']=File.read("/home/pavankumar/Desktop/wmp/mail/public/pavan.jpg")
    attachments['anand.jpg']=File.read("/home/pavankumar/Desktop/wmp/mail/public/anand.jpg")
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
