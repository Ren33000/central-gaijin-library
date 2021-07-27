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
  password: "livingyokolife",
  )

mylene = User.create!(
  name: "Mylene",
  address: "101 Mylene St",
  email: "mylene@me.org",
  password: "mylenelife",
  )

troy = User.create!(
  name: "Troy",
  address: "101 troy St",
  email: "troy@me.org",
  password: "troylife"
  )

spencer = User.create!(
  name: "Spencer",
  address: "101 spencer St",
  email: "spencer@me.org",
  password: "spencerlife"
  )

dean = User.create!(
  name: "Dean",
  address: "101 dean St",
  email: "dean@me.org",
  password: "deanlife"
  )

Book.create!(
  title: "Corporate Crime",
  description: "Corporate Crime, originally published in 1980, is the first and still the only comprehensive study of corporate law violations by our largest corporations. ",
  category: "Non-fiction",
  cover_picture: "http://books.google.com/books/content?id=lvZfAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
  ISBN: 9781412815253,
  author: "CJ Michaels",
  user: my_user
  )

Book.create!(
  title: "Harry Potter and the Philosopher's Stone",
  description: "Harry Potter spent ten long years living with Mr. and Mrs. Dursley, an aunt and uncle whose outrageous favoritism of their perfectly awful son Dudley leads to some of the most inspired dark comedy since Charlie and the Chocolate Factory.",
  category: "Sci-Fi and Fantasy",
  cover_picture: "http://books.google.com/books/content?id=zXgTdQagLGkC&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9780590353403,
  author: "J.K. Rowling",
  user: mylene
  )

Book.create!(
  title: "Harry Potter and the Philosopher's Stone",
  description: "Harry Potter spent ten long years living with Mr. and Mrs. Dursley, an aunt and uncle whose outrageous favoritism of their perfectly awful son Dudley leads to some of the most inspired dark comedy since Charlie and the Chocolate Factory.",
  category: "Kids",
  cover_picture: "http://books.google.com/books/content?id=zXgTdQagLGkC&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9780590353403,
  author: "J.K. Rowling",
  user: spencer
  )

Book.create!(
  title: "The Fellowship of the Ring: LOTR Book 1",
  description: "Immerse yourself in Middle-earth with Tolkien's classic masterpieces behind the films, telling the complete story of Bilbo Baggins and the Hobbits' epic encounters with Gandalf, Gollum, dragons and monsters, in the quest to destroy the One Ring",
  category: "Sci-Fi and Fantasy",
  cover_picture: "http://books.google.com/books/content?id=lqHNugAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9780007488315,
  author: "J.R.R. Tolkien",
  user: troy
  )

Book.create!(
  title: "Harry Potter and the Prisoner of Azkaban",
  description: "During his third year at Hogwarts School for Witchcraft and Wizardry, Harry Potter must confront the devious and dangerous wizard responsible for his parents' deaths",
  category: "Kids",
  cover_picture: "http://books.google.com/books/content?id=uUp5mAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9780007488315,
  author: "J.K. Rowling",
  user: dean
  )

Book.create!(
  title: "A Game of Thrones: A Song of Ice and Fire: Book One",
  description: "Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced.",
  category: "Sci-Fi and Fantasy",
  cover_picture: "http://books.google.com/books/content?id=5NomkK4EV68C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
  ISBN: 9780553897845,
  author: "George R. R. Martin",
  user: spencer
  )

Book.create!(
  title: "Fifty Shades of Gray",
  description: "Dorian Gray's adventures of passion",
  category: "Romance",
  cover_picture: "http://books.google.com/books/content?id=G_xavgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9781612130286,
  author: "E.L. James",
  user: mylene
  )

Book.create!(
  title: "The Martian",
  description: "A space mission takes an unexpected turn",
  category: "Sci-Fi and Fantasy",
  cover_picture: "http://books.google.com/books/content?id=53pOCgAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9781785031137,
  author: "Andy Wier",
  user: troy
  )

Book.create!(
  title: "Batman Vol.1",
  description: "Boom Pow Gapow!",
  category: "Comics",
  cover_picture: "http://books.google.com/books/content?id=PR9dwwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 1401294847,
  author: "D.C. Comics",
  user: dean
  )

Book.create!(
  title: "Hercule Poirot Investigates",
  description: "First there was the mystery of the film star and the diamond . . . then came the “suicide” that was murder",
  category: "Mystery and Crime",
  cover_picture: "http://books.google.com/books/content?id=e9GNwy_vW10C&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9780062074003,
  author: "Agatha Cristie",
  user: mylene
  )

Book.create!(
  title: "Corporate Crime",
  description: "Corporate Crime, originally published in 1980, is the first and still the only comprehensive study of corporate law violations by our largest corporations. ",
  category: "Non-fiction",
  cover_picture: "http://books.google.com/books/content?id=lvZfAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
  ISBN: 9781412815253,
  author: "CJ Michaels",
  user: dean
  )

Book.create!(
  title: "Harry Potter and the Philosopher's Stone",
  description: "Harry Potter spent ten long years living with Mr. and Mrs. Dursley, an aunt and uncle whose outrageous favoritism of their perfectly awful son Dudley leads to some of the most inspired dark comedy since Charlie and the Chocolate Factory.",
  category: "Sci-Fi and Fantasy",
  cover_picture: "http://books.google.com/books/content?id=zXgTdQagLGkC&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9780590353403,
  author: "J.K. Rowling",
  user: troy
  )

Book.create!(
  title: "The Fellowship of the Ring: LOTR Book 1",
  description: "Immerse yourself in Middle-earth with Tolkien's classic masterpieces behind the films, telling the complete story of Bilbo Baggins and the Hobbits' epic encounters with Gandalf, Gollum, dragons and monsters, in the quest to destroy the One Ring",
  category: "Sci-Fi and Fantasy",
  cover_picture: "http://books.google.com/books/content?id=lqHNugAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9780007488315,
  author: "J.R.R. Tolkien",
  user: mylene
  )

Book.create!(
  title: "A Game of Thrones: A Song of Ice and Fire: Book One",
  description: "Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced.",
  category: "Sci-Fi and Fantasy",
  cover_picture: "http://books.google.com/books/content?id=5NomkK4EV68C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
  ISBN: 9780553897845,
  author: "George R. R. Martin",
  user: dean
  )

Book.create!(
  title: "Fifty Shades of Gray",
  description: "Dorian Gray's adventures of passion",
  category: "Romance",
  cover_picture: "http://books.google.com/books/content?id=G_xavgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9781612130286,
  author: "E.L. James",
  user: troy
  )

Book.create!(
  title: "The Martian",
  description: "A space mission takes an unexpected turn",
  category: "Sci-Fi and Fantasy",
  cover_picture: "http://books.google.com/books/content?id=53pOCgAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9781785031137,
  author: "Andy Wier",
  user: spencer
  )

Book.create!(
  title: "Batman Vol.1",
  description: "Boom Pow Gapow!",
  category: "Comics",
  cover_picture: "http://books.google.com/books/content?id=PR9dwwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 1401294847,
  author: "D.C Comics",
  user: my_user
  )

Book.create!(
  title: "Hercule Poirot Investigates",
  description: "First there was the mystery of the film star and the diamond . . . then came the “suicide” that was murder",
  category: "Mystery and Crime",
  cover_picture: "http://books.google.com/books/content?id=e9GNwy_vW10C&printsec=frontcover&img=1&zoom=1&source=gbs_api",
  ISBN: 9780062074003,
  author: "Agatha Cristie",
  user: troy
  )

puts "Smart seeds created"

