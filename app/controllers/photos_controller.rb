class PhotosController < ApplicationController
  def index
    render({ :template => "photo_templates/index.html.erb" })
  end

  def details
    render({ :template => "photo_templates/details.html.erb" })
  end
end