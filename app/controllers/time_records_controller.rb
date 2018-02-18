class TimeRecordsController < ApplicationController
def index
    @time_records=TimeRecord.all
  end

  def destroy
    TimeRecord.find(params[:id]).destroy
    flash[:success] = "TimeRecord destroyed."
    redirect_to members_url
  end

 def show
    @time_record = TimeRecord.find_by(id: params[:id])
    @member = Member.find_by(id: params[:id])
 end

  def new
    @time_record = TimeRecord.new
  end

  def edit
    @time_record = TimeRecord.find_by(id: params[:id])
  end

  def time_record_params
      params[:TimeRecord]
  end

  def create
    @time_record = TimeRecord.new(time_record_params)
    @time_record.save
  end

  def update
    @time_record.update(time_record_params)
  end
end