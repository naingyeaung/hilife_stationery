class ContactController < ApplicationController
	def email
		@email = params[:content]
		@address = params[:senders_email]
        UserMailer.email("xx", "xx", @email).deliver
        flash[:notice]= "Email has been sent. We will reply to you soon."
        redirect_to "/contact"
	end
	def show

	end
end
