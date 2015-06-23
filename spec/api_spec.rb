  describe "API test" do
    it "should be true" do
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.clean

      page = create :page, name: "Yosemite 10.10"

      response = RestClient.get "http://localhost:3000/pages/1"#, {:name => 'sharanvr6'} ,{:Authorization => '6nbZOcl5zP7/XbCR9hw4cbZFYZSV2fHPQiwC3PaHcughvowzYvZEWsLDJSA/L0/+KxNnYO82HvKfto686812gg=='}
      expect(response.include?("Yosemite 10.10")).to be true

      DatabaseCleaner.clean
    end
  end