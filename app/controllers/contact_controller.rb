class ContactController < ApplicationController
	def email
		@email = params[:content]
        UserMailer.email("xx", "xx", @email).deliver
        flash[:notice]= "Email has been sent. We will reply to you soon."
        redirect_to "/contact"
	end
	def show

	end
end
