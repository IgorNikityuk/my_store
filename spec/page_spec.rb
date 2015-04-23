require 'spec_helper'
require 'database_cleaner'

  describe "check smth" do
    it "simple check" do
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.clean

      page = create :page, name: "Yosemite 10.10"

      visit 'http://localhost:3000/pages'
      click_link 'Yosemite 10.10'
      find("input[type='submit']").click

      expect(first('h2').text).to eq 'ActionController::InvalidAuthenticityToken'

      DatabaseCleaner.clean
    end
  end