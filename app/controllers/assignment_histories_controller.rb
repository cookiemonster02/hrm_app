class AssignmentHistoriesController < ApplicationController

 def index
    @assignment_histories=AssignmentHistory.all
  end

  def destroy
    AssignmentHistory.find(params[:id]).destroy
    flash[:success] = "AssignmentHistory destroyed."
    redirect_to members_url
  end

 def show
    @assignment_history = AssignmentHistory.find_by(id: params[:id])
    @member = Member.find_by(id: params[:id])
 end

  def new
    @assignment_history = AssignmentHistory.new
  end

  def edit
    @assignment_history = AssignmentHistory.find_by(id: params[:id])
  end

  def assignment_history_params
      params[:AssignmentHistory]
  end

  def create
    @assignment_history = AssignmentHistory.new(assignment_history_params)
    @assignment_history.save
  end

  def update
    @assignment_history.update(assignment_history_params)
  end


end

