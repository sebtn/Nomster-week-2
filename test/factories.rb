FactoryGirl.define do
  factory :user do
    sequence :email do |n|
    	"man#{n}@example.com"
    end
    password "sksksks123"
    password_confirmation "sksksks123" 	
  end
end