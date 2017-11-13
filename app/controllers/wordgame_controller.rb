class WordgameController < ApplicationController

  def game
    @grid = RunGame.generate_grid(9).join(" ")
  end

  def score
    @game = RunGame.new(params[:query], params[:grid], params[:time])
  end

end

#get time to start and end at the correct times
#get the query to send a request to the api
#access the results values of message etc.
