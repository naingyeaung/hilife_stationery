class ContactController < ApplicationController
	def email
		@name = params[:name]
		@email = params[:content]
		@address = params[:senders_email]
        UserMailer.email(@name, @address, @email).deliver
        flash[:notice]= "Email has been sent. We will reply to you soon."
        redirect_to "/contact"
	end
	def show

	end
end
