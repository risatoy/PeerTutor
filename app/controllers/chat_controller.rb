class ChatController < ApplicationController
  def index
    session[:conversations] ||= []

    @users = User.all.where.not(id: current_user)                 #select all users that are not us
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
  end
end