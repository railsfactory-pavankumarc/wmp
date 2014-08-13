class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  def welcome_email(user)
    @user = user
    @url  = 'http://gmail.com/login'
    attachments['pav.jpg']=File.read("/home/pavankumar/Desktop/wmp/blog/public/pav.jpg")
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
