class ExamplesController < ApplicationController
  
  def query
    name = params[:name]
    first = name.chars
    # p name.upcase 
    if first[0].downcase == "a"
      render json: {the_message: "Your name starts with the first letter of the alphabet!"}
    else
      render json: {the_message: name.upcase}
    end
  end

  def guess_query
    # render json: {the_message: "Guess a number"}
    user_guess = 100
    answer = 37

    if params[:guess].to_i > answer
      the_message = "Your guess is too high."
    elsif params[:guess].to_i < answer
      the_message = "Your gues is too low"
    elsif params[:guess].to_i == answer
      the_message = "You are correct!!!"
    end

    render json: {message: the_message}
  end

end
 