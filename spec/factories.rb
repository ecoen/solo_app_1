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
		sequence(:title)  do |n| 
      result = "AAA"
      n.times {result.succ!}
      result
    end
		director	"Ron Howard"
		rating	"R"
	end
end

 

