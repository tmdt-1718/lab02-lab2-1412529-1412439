class MessagesController < ApplicationController	

  def show
  	@messages = Message.select('messages.id, messages.content, messages.status, messages.user1, messages.user2, users.email').joins('LEFT OUTER JOIN "users" ON "users"."id" = "messages"."user1"').where(user2: session[:user_id])
  end

  def new
  end

end
