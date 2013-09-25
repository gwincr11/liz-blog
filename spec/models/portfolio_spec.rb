require 'spec_helper'

describe Portfolio do
  let!(:portfolio) { FactoryGirl.create(:portfolio) }
	subject{ portfolio }

	it { should respond_to(:title) }
	it {should respond_to(:body) }
	it{ should be_valid }
	it { should respond_to :categories }

	describe "title not present" do
		before {portfolio.title= nil}
		it { should_not be_valid }
	end

	describe "body not present" do
		before {portfolio.body= nil}
		it { should_not be_valid }
	end

	describe "title too long" do
	    before { portfolio.title = "a"*145}
	    it { should_not be_valid}
	  end
end
