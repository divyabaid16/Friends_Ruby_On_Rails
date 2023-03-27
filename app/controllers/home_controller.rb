class HomeController < ApplicationController
  def index
  end

  def about
    # @about_me - instance variable (work everywhere) about_me - local variable
    @about_me = "My name is Divya"
    @answer = 2 + 2
  end
end
