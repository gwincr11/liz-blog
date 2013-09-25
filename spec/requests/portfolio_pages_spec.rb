require 'spec_helper'

describe "StaticPages" do
  let!(:cat1) { FactoryGirl.create(:category, title: 'Academic Portfolio') }
  let!(:cat2) { FactoryGirl.create(:category, title:'Performance Portfolio') }
  let!(:cat3) { FactoryGirl.create(:category, title:'Professional Portfolio') }
  let!(:port1) { FactoryGirl.create(:portfolio) }
  let!(:port2) { FactoryGirl.create(:portfolio) }
  let!(:port3) { FactoryGirl.create(:portfolio) }
  before do
  	port1.categories.push cat1
  	port3.categories.push cat2
  end


  describe "Portfolio links" do
  	before do

  		visit root_path
  	end
  	subject { page }

  	it { should have_link cat1.title, portfolio_category_path(cat1) }
  	it { should have_link cat2.title, portfolio_category_path(cat2) }
  	it { should have_link cat3.title, portfolio_category_path(cat3) }
  end

  describe "Portfolio cat page has appropriate content " do
  	before do
  		visit portfolio_category_path(cat1.id)
  	end
  	subject { page }
  	it { should have_link port1.title }
  	it { should_not have_link port2.title }
  	it { should_not have_link port3.title }
  end

  describe "Portfolio article page" do
    before { visit portfolio_entry_path(port1) }
    subject { page }

    it { should have_content port1.title }
  end

end