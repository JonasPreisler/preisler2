class PagesController < ApplicationController

  def index
    @project = Project.all
  end

  def about
  end
end
