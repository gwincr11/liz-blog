require 'spec_helper'

describe Blog do
	let!(:blog) { FactoryGirl.create(:blog) }
	subject{ blog }

	it { should respond_to(:title) }
	it {should respond_to(:body) }
	it{ should be_valid }

	describe "title not present" do
		before {blog.title= nil}
		it { should_not be_valid }
	end

	describe "body not present" do
		before {blog.body= nil}
		it { should_not be_valid }
	end

	describe "title too long" do
	    before { blog.title = "a"*145}
	    it { should_not be_valid}
	  end
end
