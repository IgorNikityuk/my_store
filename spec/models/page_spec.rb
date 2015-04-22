require 'spec_helper'
require './app/models/page'

  describe Page do
    it "validates the name makes sure it is not empty" do
      binding.pry
      page = Page.new
      
      page.errors[:name].should_not be_empty
    end
  end