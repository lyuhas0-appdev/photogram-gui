class PhotosController < ApplicationController
  def index
    @photos = Photo.all.order( :created_at => :desc)

    render({ :template => "photo_templates/index.html.erb" })
  end

  def details
    photo_id = params.fetch("id")

    @photo = Photo.where({:id => photo_id}).at(0)
    render({ :template => "photo_templates/details.html.erb" })
  end
end