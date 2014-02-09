namespace :db do
  desc "Fill product table with sample data"
  task populate: :environment do
    Product.create!(name: "Soccer Ball",
                 price: 10.99,
                 numberavailable: 10,
                 imageurl: "image.jpeg",
                 description: "A pink and black size 8 soccer ball")
    10.times do |n|
      name  = Faker::Commerce.product_name
      price = 10.99 + n
      numberavailable = 10 + n
      imageurl  = "image#{n}.png"
      description = Faker::Lorem.sentence(rand(5..8))
      Product.create!(name: name,
                   price: price,
                   numberavailable: numberavailable,
                   imageurl: imageurl,
                   description: description)
    end
  end

  task populate: :environment do
    Movie.create!(title: "Zombieland",
                  rating: "R",
                  director: "Robert Altman")
    20.times do |n|
      title = "Movie #{n}"
      rating = "PG"
      director = Faker::Name.name
      Movie.create!(title: title,
                    rating: rating,
                    director: director)
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

