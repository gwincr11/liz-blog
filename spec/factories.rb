FactoryGirl.define do
  factory :blog do
    body "Lorem Ipsum"
	sequence(:title) { |n| "blog #{n}"}
  end

  factory :portfolio do
    body "Lorem Ipsum"
	sequence(:title) { |n| "portfolio #{n}"}
  end

  factory :category do
  	sequence(:title) { |n| "portfolio #{n}"}
  end
end