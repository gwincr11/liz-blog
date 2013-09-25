require 'spec_helper'

describe Category do
  let!(:category) { FactoryGirl.create(:category) }
	subject{ category }

	it { should respond_to(:title) }
	it{ should be_valid }
	it { should respond_to :portfolio }

	describe "title not present" do
		before {category.title= nil}
		it { should_not be_valid }
	end

	describe "title too long" do
    before { category.title = "a"*145}
    it { should_not be_valid}
  end

end
