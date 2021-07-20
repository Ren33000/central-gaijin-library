# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 # t.string"title"
 #    t.string "category"
 #    t.string "description"
 #    t.integer "ISBN"
 #    t.string "cover_picture"
 #    t.datetime "created_at", precision: 6, null: false
 #    t.datetime "updated_at", precision: 6, null: false
 #    t.bigint "user_id", null: false
 #    t.index ["user_id"], name: "index_books_on_user_id"
 #  end

puts "Cleaning Database"
 Booking.destroy_all
 Book.destroy_all
 User.destroy_all

puts "Creating Smart Seeds"

my_user = User.create!(
  name: "John Doe",
  address: "101 Cleverly Lane, Minato-mirai, Yokohama",
  email: "jdyoko@me.org",
  password: "livingyokolife"
  )

mylene = User.create!(
  name: "Mylene",
  address: "101 Mylene St",
  email: "mylene@me.org",
  password: "mylenelife"
  )

troy = User.create!(
  name: "troy",
  address: "101 troy St",
  email: "troy@me.org",
  password: "troylife"
  )

spencer = User.create!(
  name: "spencer",
  address: "101 spencer St",
  email: "spencer@me.org",
  password: "spencerlife"
  )

dean = User.create!(
  name: "dean",
  address: "101 dean St",
  email: "dean@me.org",
  password: "deanlife"
  )

Book.create!(
  title: "Corporate Crime",
  description: "Corporate Crime, originally published in 1980, is the first and still the only comprehensive study of corporate law violations by our largest corporations. ",
  category: "Non-fiction",
  cover_picture: "https://images-na.ssl-images-amazon.com/images/I/51zADBhFW9L._SX331_BO1,204,203,200_.jpg",
  ISBN: 9781412815253,
  user: my_user
  )

Book.create!(
  title: "Harry Potter and the Philosopher's Stone",
  description: "Harry Potter spent ten long years living with Mr. and Mrs. Dursley, an aunt and uncle whose outrageous favoritism of their perfectly awful son Dudley leads to some of the most inspired dark comedy since Charlie and the Chocolate Factory.",
  category: "Sci-Fi and Fantasy",
  cover_picture: "https://images-na.ssl-images-amazon.com/images/I/51mtZy7oJVL._SX336_BO1,204,203,200_.jpg",
  ISBN: 9780590353403,
  user: mylene
  )

Book.create!(
  title: "The Fellowship of the Ring: LOTR Book 1",
  description: "Immerse yourself in Middle-earth with Tolkien's classic masterpieces behind the films, telling the complete story of Bilbo Baggins and the Hobbits' epic encounters with Gandalf, Gollum, dragons and monsters, in the quest to destroy the One Ring",
  category: "Sci-Fi and Fantasy",
  cover_picture: "http://books.google.com/books/content?id=lqHNugAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9780007488315,
  user: troy
  )

Book.create!(
  title: "A Game of Thrones: A Song of Ice and Fire: Book One",
  description: "Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced.",
  category: "Sci-Fi and Fantasy",
  cover_picture: "http://books.google.com/books/content?id=5NomkK4EV68C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
  ISBN: 9780553897845,
  user: spencer
  )

Book.create!(
  title: "Dora The Explorer",
  description: "Dora's range of adventures with her friends and family",
  category: "Kids",
  cover_picture: "http://books.google.com/books/content?id=HshOnwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9780689866234,
  user: dean
  )

Book.create!(
  title: "Fifty Shades of Gray",
  description: "Dorian Gray's adventures of passion",
  category: "Romance",
  cover_picture: "http://books.google.com/books/content?id=G_xavgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9781612130286,
  user: mylene
  )

Book.create!(
  title: "The Martian",
  description: "A space mission takes an unexpected turn",
  category: "Sci-Fi and Fantasy",
  cover_picture: "http://books.google.com/books/content?id=53pOCgAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9781785031137,
  user: troy
  )

Book.create!(
  title: "The Great Gatsby",
  description: "The classic adventure of The Great Gatsby",
  category: "Classics",
  cover_picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCrRAvteXJgM-3OaMJCmxTEsWhrW5Lv2I-1Yk5mdabukFEMyKR2MJs8b9gm1FdicvNpVk&usqp=CAU",
  ISBN: 9780333791035,
  user: spencer
  )

Book.create!(
  title: "Batman Vol.1",
  description: "Boom Pow Gapow!",
  category: "Comics",
  cover_picture: "http://books.google.com/books/content?id=PR9dwwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 1401294847,
  user: dean
  )

Book.create!(
  title: "Hercule Poirot Investigates",
  description: "First there was the mystery of the film star and the diamond . . . then came the “suicide” that was murder",
  category: "Mystery and Crime",
  cover_picture: "http://books.google.com/books/content?id=e9GNwy_vW10C&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9780062074003,
  user: mylene
  )

puts "Smart seeds created"

