class UsersController < ApplicationController

  def index
    render({ :template => "user_templates/index.html.erb" })
  end

  def details
    render({ :template => "user_templates/details.html.erb" })
  end

end