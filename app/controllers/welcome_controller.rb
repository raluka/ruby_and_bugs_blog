class WelcomeController < ApplicationController
  def hello
    render text: "¡Hola, mundo!"
  end

  def goodbye
    render text: "Goodbye, world!"
  end
end
