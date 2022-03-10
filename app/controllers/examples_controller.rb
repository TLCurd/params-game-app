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
    user_guess = params[:guess].to_i
    answer = 37

    if user_guess > answer
      the_message = "Your guess is too high."
    elsif user_guess < answer
      the_message = "Your guess is too low"
    elsif user_guess == answer
      the_message = "You are correct!!!"
    end

    render json: {message: the_message}
  end

  def numbers
    sum = params[:number_1].to_i + params[:number_2].to_i
    render json: {message: "The total of the two numbers is #{sum}!"}
  end

  def guess
    user_guess = params[:guess].to_i
    answer = 100

    if user_guess > answer
      the_message = "Your guess is too high."
    elsif user_guess < answer
      the_message = "Your guess is too low"
    elsif user_guess == answer
      the_message = "You are correct!!!"
    end

    render json: {message: the_message}
  end
end
 