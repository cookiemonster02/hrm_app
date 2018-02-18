class FamiliesController < ApplicationController
def index
    @families=Family.all
  end

  def destroy
    Family.find(params[:id]).destroy
    flash[:success] = "Family destroyed."
    redirect_to members_url
  end

 def show
    @family = Family.find_by(id: params[:id])
    @member = Member.find_by(id: params[:id])
 end

  def new
    @family = Family.new
  end

  def edit
    @family = Family.find_by(id: params[:id])
  end

  def family_params
      params[:Family]
  end

  def create
    @family = Family.new(family_params)
    @family.save
  end

  def update
    @family.update(family_params)
  end
end