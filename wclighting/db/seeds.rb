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
manufacturers = Manufacturer.create!([
                                     { name: "Manu1", profile: "We make things", website: "www.manu1.com" },
                                     { name: "Manu2", profile: "We make things", website: "www.manu2.com" },
                                     { name: "Manu3", profile: "We make things", website: "www.manu3.com" },
                                     { name: "Manu4", profile: "We make things", website: "www.manu4.com" },
                                     { name: "Manu5", profile: "We make things", website: "www.manu5.com" }])

thing1 = ProductType.find(1)
thing2 = ProductType.find(2)
thing3 = ProductType.find(3)


thing1.manufacturers << Manufacturer.all.sample(2)
thing2.manufacturers << Manufacturer.all.sample(3)
thing3.manufacturers << Manufacturer.all.sample(5)
