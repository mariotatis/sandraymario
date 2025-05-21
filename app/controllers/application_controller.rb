class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # Skip CSRF protection for JS requests in development
  skip_before_action :verify_authenticity_token, if: -> { request.format.js? && Rails.env.development? }
end
