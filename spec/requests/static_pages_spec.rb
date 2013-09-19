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

  	before do
  		visit "/"

  	end
  	subject{ page }
  	it "should have the proper title" do
  		expect(page).to have_title("#{base_title} | Home")
  	end

  end

  describe "Home Page" do
  	before do
  		visit "/about"
  	end
  	it "should have the proper title" do
  		expect(page).to have_title("#{base_title} | About")
  	end

  end
end
