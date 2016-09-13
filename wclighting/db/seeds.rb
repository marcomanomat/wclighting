# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product_types = ProductType.create!([
                                     { name: "Thing1" },
                                     { name: "Thing2" },
                                     { name: "Thing3" }])
50.times do |num|
  Manufacturer.create!(name: "Manu#{num}",
                       profile: "Mauris malesuada condimentum turpis eget finibus. Sed lobortis egestas posuere. Etiam efficitur condimentum consequat. Pellentesque enim risus, tincidunt nec efficitur eu, condimentum ut lorem. Duis sit amet ante ultrices, ornare mi at, pretium augue. Curabitur finibus dolor dui, ornare pretium nibh molestie sit amet. Nulla sed molestie sapien. In vel placerat metus.",
                       website: "www.manu#{num}.com")
end

thing1 = ProductType.find(1)
thing2 = ProductType.find(2)
thing3 = ProductType.find(3)


thing1.manufacturers << Manufacturer.all.sample(2)
thing2.manufacturers << Manufacturer.all.sample(3)
thing3.manufacturers << Manufacturer.all.sample(5)
