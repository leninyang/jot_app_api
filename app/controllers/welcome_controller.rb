class WelcomeController < ApplicationController
  def index
    render json: { status: 200, message: "Jot-App API" }
  end
end
