class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  def persona(role)
 		if role == "dev"
			return "e de como podemos lhe ajudar a se tornar um dev,"
 		elsif role == "startup" 
 			return "e de como podemos lhe ajudar a alcançar o seu objetivo relacionado a startups"
 		elsif role == "new_carreer"
 			return %w[]
 		elsif role == "learning"
 			return %w[]
 		elsif role == "change_carreer"
 			return %w[e de como podemos lhe ajudar a alcançar o seu objetivo de mudar de carreira,]
 		else
 			""
 		end
 	end

 	def greeting(array)
 		return array.sample
 	end
 	
  def welcome(first_name, last_name, role, ticket, cell_phone)
    @first_name = first_name
    @last_name = last_name
    @greeting = greeting(%w[Viva])
    
    # Holds the ticket type
    # %w[RSVP Talk Inscrição Workshop]
    
    @ticket_type = event_type(ticket)
    
    @role = persona(role)
    @cell_phone = cell_phone
    # Make a method for parse emails
    mail to: "to@example.org"
  end

 	def event_type(ticket_type)
 		return true if %w[RSVP Talk Inscrição Workshop].include?(ticket_type)
 	end

 	def prospect(text)
 		meting_url = ""
 		@call = "Would You Like To Hear About Le Wagon's Other Free Workshops And Talks?"
 		@no = 	"No, thank you."
 		case text
 		  when @call
 			  "E se preferir, poderá conversar com Ana sobre o bootcamp através do link"
 		  when @no
 		    false
 		end


 	end

 	 

 	def more_about_us

 	end
end
