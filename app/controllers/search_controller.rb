class SearchController < ApplicationController

  def index
    @apps = App.where("name LIKE ?", "%#{params[:query]}%")
  end

end