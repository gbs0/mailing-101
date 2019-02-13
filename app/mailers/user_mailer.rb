class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject

  def welcome(user, role, ticket)
    @greeting = %w[Viva].sample
    # Holds the ticket type
    # %w[RSVP Talk Inscrição Workshop]
    @ticket_type = event_type(ticket)
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

 	def event_type(ticket_type)
 		return %w[RSVP Talk Inscrição Workshop].include?(ticket_type)

 		end 
 	end
 	def about_us
 	end
end
