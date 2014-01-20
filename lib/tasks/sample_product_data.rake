namespace :db do
  desc "Fill product table with sample data"
  task populate: :environment do
    Product.create!(name: "Soccer Ball",
                 price: 10.99,
                 numberavailable: 10,
                 imageurl: "http://test/image.jpeg")
    10.times do |n|
      name  = Faker::Name.name
      price = 10.99 + n
      numberavailable = 10 + n
      imageurl  = "http://test.image#{n}.jpeg"
      Product.create!(name: name,
                   price: price,
                   numberavailable: numberavailable,
                   imageurl: imageurl)
    end
  end
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end

