class StaticPagesController < ApplicationController
  def home
  	fresh_when "static_home"
  end

  def about
  	fresh_when "static_about"
  end
end
