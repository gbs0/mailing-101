class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject

  def welcome(user, role, ticket, cell_phone)
    @greeting = %w[Viva].sample
    # Holds the ticket type
    # %w[RSVP Talk Inscrição Workshop]
    @ticket_type = event_type(ticket)
    @user = user
    @persona = persona(role)
    @cell_phone = cell_phone
    
    # Make a method for parse emails
    mail to: "to@example.org"
  end


 	def persona(role)
 		case role
		when @dev
			return %w[e de como podemos lhe ajudar a se tornar um dev,]
 		when @startup 
 			return %w[e de como podemos lhe ajudar a alcançar o seu objetivo relacionado a startups,]
 		when @new_carreer
 			return %w[]
 		when @learning
 			return %w[]
 		when @change_carreer
 			return %w[e de como podemos lhe ajudar a alcançar o seu objetivo de mudar de carreira,]
 		end
 	end

 	def event_type(ticket_type)
 		return true if %w[RSVP Talk Inscrição Workshop].include?(ticket_type)
 	end

 	def prospect(text)
 		@call = "Would You Like To Hear About Le Wagon's Other Free Workshops And Talks?"

 	end


 	def about_us
 	end
end
