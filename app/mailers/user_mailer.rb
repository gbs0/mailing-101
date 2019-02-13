class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject

  def welcome(user)
    @greeting = ["Olá", "Oi", "Viva!"].sample
    @user = user


    mail to: "to@example.org"
  end

 	def persona
 		@dev = %w[]
 		@startup = %w[]
 		@carrer = %w[]
 		@learning = 
 		@changing_carrer = %w[e de como podemos lhe ajudar a alcançar o seu objetivo de mudar de carreira,]
 	end

 	def about_us
 	end
end
