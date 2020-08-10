class UsersController < ApplicationController

  def index
    @users = User.all.order({ :username => :asc })
    render({ :template => "user_templates/index.html.erb" })
  end

  def details
    user_id = params.fetch("id")
    @user = User.where({ :id => user_id }).at(0)

    @user_photos = Photo.where({ :owner_id => user_id })

    render({ :template => "user_templates/details.html.erb" })
  end

end