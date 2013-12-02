class GameController < ApplicationController
  def play
    session[:games_played] ||= 0
    session[:correct_answers] ||= 0
    @sound = Meow.order("RANDOM()").first
    @image1 = Image.order("RANDOM()").where(:cat => false).first
    @image2 = Image.order("RANDOM()").where(:cat => true).first
    @score = "#{session[:correct_answers] }/#{session[:games_played]}"
  end

  def score
    result = params[:result]
    session[:games_played] += 1
    session[:correct_answers] += 1 if result == "right"
    render json: {:games_played => session[:games_played], :correct_answers => session[:correct_answers]}
  end
end


