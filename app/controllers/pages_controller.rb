class PagesController < ApplicationController
  def about
    @title = 'About';
    @description = 'This is about us page';  
  end
end
