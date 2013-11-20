require 'spec_helper'

describe "Stars" do
  describe "GET /stars" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get stars_path
      response.status.should be(200)
    end
  end
end
