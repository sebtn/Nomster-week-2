FactoryGirl.define do
  factory :user do
    sequence :email do |n|
    	"man#{n}@example.com"
    end
    password "sksksks123"
    password_confirmation "sksksks123" 	
   end

  factory :place do
  	name "cool one"
	description "Si ome"
	address "123 elm street"
	latitude(42.3631519)
    longitude(-71.056098)
  	association :user
  	end  
end