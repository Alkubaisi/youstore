class PagesController < ApplicationController
  def home
    @storages = Storage.all.limit(3)
  end

  def about
  end

def profile
end

end
