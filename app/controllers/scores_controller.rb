class ScoresController < ApplicationController

  def index
    @scores=Score.all
  end

  def destroy
    Score.find(params[:id]).destroy
    flash[:success] = "Score destroyed."
    redirect_to members_url
  end

 def show
    @score = Score.find_by(id: params[:id])
    @member = Member.find_by(id: params[:id])
 end

  def new
    @score = Score.new
  end

  def edit
    @score = Score.find_by(id: params[:id])
  end

  def score_params
      params[:Score]
  end

  def create
    @score = Score.new(score_params)
    @score.save
  end

  def update
    @score.update(score_params)
  end
end
