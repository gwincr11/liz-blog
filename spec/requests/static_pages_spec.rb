require 'spec_helper'

describe "StaticPages" do
	let(:base_title) { "Liz Foster-Shaner" }

  describe "Header and nav" do
  	before do
  		visit "/"
  	end
  	subject{ page }
  	it "should have nav items" do

  	end
  	it "should have lizs name" do
  		expect(page).to have_content("Liz Foster-Shaner")
  	end
  	it{ should have_link('Blog')}
  	it{ should have_link('Academic Portfolio')}
  	it{ should have_link('Performance Portfolio')}
  	it{ should have_link('Professional Portfolio')}
  end

  describe "Home Page" do
  	let!(:blog) { FactoryGirl.create(:blog) }
	  let!(:blog2) { FactoryGirl.create(:blog) }
	  let!(:blog3) { FactoryGirl.create(:blog) }
  	before do
  		visit "/"

  	end
  	subject{ page }

  	it{ should have_content(blog.body) }
  	it { should have_content(blog2.body) }
  	it { should have_content(blog3.body) }
    it { should have_link(blog.title, href: blog_path(blog))}

  	it "should have the proper title" do
  		expect(page).to have_title("#{base_title} | Home")
  	end

  end

  describe "About Page" do
  	before do
  		visit "/about"
  	end
  	it "should have the proper title" do
  		expect(page).to have_title("#{base_title} | About")
  	end

  end
end
