class ApplicationController < ActionController::API
  include MailBox
  include ExceptionsHandler
end
