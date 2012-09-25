class HomeController < ApplicationController
  def index
    @task = Task.find(1)
  end
end
