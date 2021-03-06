class ApplicationController < ActionController::Base
  before_action :authorize, only: [:create, :edit, :destroy, :delete, :new]
  protect_from_forgery with: :exception
  include SessionsHelper
end
