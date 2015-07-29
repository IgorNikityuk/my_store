require 'spec_helper'
require 'database_cleaner'

  describe "check smth" do
    it "1 check" do
      page = create :page, name: "Yosemite 10.10"
      visit 'http://localhost:3000/pages'
      click_link 'Yosemite 10.10'
    end

    it "2 check" do
      page = create :page, name: "Yosemite 10.10"
      visit 'http://localhost:3000/pages'
      click_link 'Yosemite 10.10'
    end

    it "3 check" do
      page = create :page, name: "Yosemite 10.10"
      visit 'http://localhost:3000/pages'
      click_link 'Yosemite 10.10'
    end

    it "4 check" do
      page = create :page, name: "Yosemite 10.10"
      visit 'http://localhost:3000/pages'
      click_link 'Yosemite 10.10'
    end

    it "5 check" do
      page = create :page, name: "Yosemite 10.10"
      visit 'http://localhost:3000/pages'
      click_link 'Yosemite 10.10'
    end

    it "6 check" do
      page = create :page, name: "Yosemite 10.10"
      visit 'http://localhost:3000/pages'
      click_link 'Yosemite 10.10'
    end

    it "7 check" do
      page = create :page, name: "Yosemite 10.10"
      visit 'http://localhost:3000/pages'
      click_link 'Yosemite 10.10'
    end

    it "8 check" do
      page = create :page, name: "Yosemite 10.10"
      visit 'http://localhost:3000/pages'
      click_link 'Yosemite 10.10'
    end

    it "9 check" do
      page = create :page, name: "Yosemite 10.10"
      visit 'http://localhost:3000/pages'
      click_link 'Yosemite 10.10'
    end

    it "10 check" do
      page = create :page, name: "Yosemite 10.10"
      visit 'http://localhost:3000/pages'
      click_link 'Yosemite 10.10'
    end
  end