class UsersController < ApplicationController

  def index
    @users = User.all.order({ :username => :asc })
    render({ :template => "user_templates/index.html.erb" })
  end

  def details
    entered_username = params.fetch("path_username")
    @user = User.where({ :username => entered_username }).at(0)

    render({ :template => "user_templates/details.html.erb" })
  end

end