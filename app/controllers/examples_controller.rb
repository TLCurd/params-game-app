class ExamplesController < ApplicationController
  
  def query
    name = params[:name]
    first = name.chars
    # p name.upcase 
    if first[0].downcase == "a"
      render json: {message: "Your name starts with the first letter of the alphabet!"}
    else
      render json: {message: name.upcase}
    end
  end

end
