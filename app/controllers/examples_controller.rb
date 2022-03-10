class ExamplesController < ApplicationController
  
  def query
    name = params[:name]
    # first = name.split("")
    p name.upcase 
    render json: name.upcase 
    # if first[0].downcase == "a"
    #   p "Your name starts with the first letter of the alphabet!"
    # end
  end

end
