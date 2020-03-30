class Users::SessionsController < Devise::SessionsController
  # GET /resource/sign_in
  layout "login", only: [:new]
  def new
    super

  end

  def test

  end

end