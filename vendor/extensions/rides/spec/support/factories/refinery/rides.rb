
FactoryGirl.define do
  factory :ride, :class => Refinery::Rides::Ride do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

