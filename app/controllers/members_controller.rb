class MembersController < ApplicationController

  def index
    @search_params = {
      id: params[:id],
      keyword: params[:keyword],
      position: params[:position]
    }

    relation = Member.paginate(page: params[:page])

    relation = relation.where(id: @search_params[:id]) if @search_params[:id].present?
    relation = relation.where("lastname||firstname LIKE ?", "%#{@search_params[:keyword]}%") if @search_params[:keyword].present?
    relation = relation.where(position: @search_params[:position]) if @search_params[:position].present?

    @members = relation
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    flash[:success] = "Member destroyed."
    redirect_to members_url
  end

  def show
    @member = Member.find_by(id: params[:id])
  end

  def new
    @member = Member.new
  end

  def edit
    @member = Member.find_by(id: params[:id])
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to "https://hrm1-cookiemonster2.c9users.io/members", notice: '作成しました。'
    else
      redirect_to 'https://hrm1-cookiemonster2.c9users.io/members/new', notice: '作成に失敗しました。'
    end
  end

  def update
    @member = Member.find_by(id: params[:id])
    @member.update(member_params)
    redirect_to members_path
  end

  def member_params
    params.require(:member).permit(:lastname,:lastname_kana,:firstname,:firstname_kana,:birthday,:hire_date,:sex,:assignment,:employee_attributes,:position,:grade,:character_judgment)
  end

end
