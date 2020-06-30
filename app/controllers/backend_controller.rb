class BackendController < ApplicationController
  before_action :authenticate_user!
  layout  'backend'

  def dashboard
  end

  def create_new_website
  end
end
