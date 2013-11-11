AddressToCoords::Application.routes.draw do
  get("/coords", { :controller => "addresses", :action => "fetch_coordinates" })
  get("/coords/new_address", { :controller => "addresses", :action => "new" })
  get("/coords/location", { :controller => "addresses", :action => "location" })
end
