describe "API test" do
  before :each do
    DatabaseCleaner.clean
  end

  it "GET page" do
    page = create :page, name: "Yosemite 10.10"
    page_id = page[:id]
    response = HTTParty.get "http://localhost:3000/pages/#{page_id}"
    expect(response.code).to be 200
    expect(response.include?("Yosemite 10.10")).to be true
  end

  it "POST page" do
    HTTParty.post "http://localhost:3000/pages", :query => {page: {:name => "Yosemite 10.10"}}
    response = HTTParty.get "http://localhost:3000/pages/#{Page.first[:id]}"
    expect(response.code).to be 200
    expect(response.include?("Yosemite 10.10")).to be true  
  end

  it "PUT page" do
    page = create :page, name: "Yosemite 10.10"
    page_id = page[:id]
    HTTParty.put "http://localhost:3000/pages/#{Page.first[:id]}", :query => {page: {:name => "SHARAN_VR6"}}
    response = HTTParty.get "http://localhost:3000/pages/#{page_id}"
    expect(response.code).to be 200
    expect(response.include?("SHARAN_VR6")).to be true
  end

  it "DELETE page" do
    page = create :page, name: "Yosemite 10.10"
    page_id = page[:id]
    response = HTTParty.delete "http://localhost:3000/pages/#{page_id}"
    expect(response.code).to be 200
    response = HTTParty.get "http://localhost:3000/pages/#{page_id}"
    expect(response.code).to be 404
  end

end