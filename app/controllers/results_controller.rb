class ResultsController < ApplicationController

def index
  @storages = Storage.all

  @storages = Storage.where.not(latitude: nil, longitude: nil)

  @hash = Gmaps4rails.build_markers(@storages) do |storage, marker|
      marker.lat storage.latitude
      marker.lng storage.longitude
  end
end





end
