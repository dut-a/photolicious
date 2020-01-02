Rails.application.routes.draw do

  homepage = "photos#index"

  root homepage # Landing page

  # Photos
  get "/photos", to: homepage
  post "/photos", to: "photos#create"
  get "/photos/new", to: "photos#new", as: "new_photo"
  get "/photos/:id/edit", to: "photos#edit", as: "edit_photo"
  get "/photos/:id", to: "photos#show", as: "photo"
  patch "/photos/:id", to: "photos#update"
  get "/photos/:id/del", to: "photos#delete"
  delete "/photos/:id", to: "photos#destroy"

  # Photographers
  get "/photographers", to: "photographers#index"
  post "/photographers", to: "photographers#create"
  get "/photographers/new", to: "photographers#new", as: "new_photographer"
  get "/photographers/:id/edit", to: "photographers#edit", as: "edit_photographer"
  get "/photographers/:id", to: "photographers#show", as: "photographer"
  patch "/photographers/:id", to: "photographers#update"
  get "/photographers/:id/del", to: "photographers#delete"
  delete "/photographers/:id", to: "photographers#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
