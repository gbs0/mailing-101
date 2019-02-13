# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome
  def welcome
  	first_name = "Fernando"
  	last_name = "Jardim"
  	role = "startup"
    UserMailer.welcome(user, role)
  end

end
