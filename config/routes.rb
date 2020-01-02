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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
