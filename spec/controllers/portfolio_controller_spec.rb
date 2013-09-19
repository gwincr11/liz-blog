require 'spec_helper'

describe PortfolioController do

  describe "GET 'academic'" do
    it "returns http success" do
      get 'academic'
      response.should be_success
    end
  end

  describe "GET 'proffesional'" do
    it "returns http success" do
      get 'proffesional'
      response.should be_success
    end
  end

  describe "GET 'performance'" do
    it "returns http success" do
      get 'performance'
      response.should be_success
    end
  end

end
