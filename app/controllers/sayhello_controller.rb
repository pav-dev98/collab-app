class SayhelloController < ApplicationController
  def index
    render json: {message: "hola pavel eres un genio"}
  end
end
