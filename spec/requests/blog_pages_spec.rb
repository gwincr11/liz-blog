require 'spec_helper'

describe "BlogPages" do
	let!(:blog) { FactoryGirl.create(:blog) }
	let!(:blog2) { FactoryGirl.create(:blog) }
	let!(:blog3) { FactoryGirl.create(:blog) }

	describe "blog page" do
		before { visit blog_path(blog) }
		subject { page }

		it { should have_content(blog.body) }
		it { should have_content(blog.title) }
	end
end