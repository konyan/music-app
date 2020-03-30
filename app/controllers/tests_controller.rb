class TestsController < ApplicationController
  layout "login"

  def index
    render template: 'devise/sessions/new'
  end

end