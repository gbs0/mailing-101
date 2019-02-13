# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome
  def welcome
  	first_name = "Fernando"
  	last_name = "Jardim"
  	cell_phone = "11986829045"
  	role = "startup"
  	ticket_type = "RSVP"
    UserMailer.welcome(first_name,
    									 last_name,
    									 role, cell_phone, ticket_type)
  end

end
