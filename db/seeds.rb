# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Location.create(county: "Nairobi", street: "Moi Avenue")
Location.create(county: "Nakuru", street: "Kenyatta Avenue")
Location.create(county: "Mombasa", street: "Tom Mboya")



review = Review.create([{comment: "to good!", rating: 1, user_id: 5, ristorante_id: 2}, {comment: "to good!", rating: 5, user_id: 4, ristorante_id:2}])
