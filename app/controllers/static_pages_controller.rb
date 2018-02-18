class StaticPagesController < ApplicationController
  before_action :admin_user, only: :home
  def home
    redirect_to 'https://hrm1-cookiemonster2.c9users.io/users/sign_in'
  end

  def admin_user
    if current_user.nil?
      redirect_to 'https://hrm1-cookiemonster2.c9users.io/users/sign_in'
    else
      redirect_to 'https://hrm1-cookiemonster2.c9users.io/members'
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
