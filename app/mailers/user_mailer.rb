class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject

  def welcome(user, role)
    @greeting = %w[Viva].sample
    # Holds the ticket type
    @ticket_type = @ticket_type.include?(%w[RSVP Talk Inscrição])
    @user = user
    @persona = persona(role)

    mail to: "to@example.org"
  end


 	def persona(role)
 		case role
		when @dev
			return %w[e de como podemos lhe ajudar a se tornar um dev,]
 		when @startup = "e de como podemos lhe ajudar a alcançar o seu objetivo relacionado a startups,"
 		end

 		@carrer = %w[]
 		@learning = 
 		@change_carrer = "e de como podemos lhe ajudar a alcançar o seu objetivo de mudar de carreira,"
 	end

 	def about_us
 	end
end
