FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end

FactoryGirl.define do
	factory :movie do
		title	"Cookies Fortune"
		director	"Ron Howard"
		rating	"R"
	end
end