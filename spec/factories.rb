FactoryGirl.define do
  factory :blog do
    body "Lorem Ipsum"
	sequence(:title) { |n| "blog #{n}"}
  end
end