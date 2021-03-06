Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "index" })
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "details" })
  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:id", { :controller => "photos", :action => "details" })
  get("/delete_photo/:id", { :controller => "photos", :action => "delete" })
end
