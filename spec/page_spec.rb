require 'spec_helper'
require 'database_cleaner'

  describe "check smth" do
    it "simple check" do
      page = create :page, name: "Yosemite 10.10"

      visit 'http://localhost:3000/pages'
      click_link 'Yosemite 10.10'
    end
  end