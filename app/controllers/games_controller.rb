class GamesController < ApplicationController

QUESTIONS = [
"A t'il les yeux clairs ?",
"Est-il un homme ?",
"Est-il vegan ?",
"Est-il originaire d'aquitaine ?"
]


  def create
    #create a new game!
    @game = Game.create
  	redirect_to edit_game_path(@game["id"], question_id: 0), method: :get
  end

  def edit
    @questions = QUESTIONS[params["question_id"].to_i]
  end

  def update
	  question_id = params["question_id"].to_i + 1
    @game = Game.find(params["id"])
    @game["answers"] << params["answers"]
    @game.save
    if question_id > 3
       redirect_to game_path(@game["id"]), method: :get
    else 
       redirect_to edit_game_path(@game["id"], question_id: question_id), method: :get
  end

  def show
    @game = Game.find(params["id"])
  end
end