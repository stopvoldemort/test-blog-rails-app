# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

david = Author.create(first_name: "David", last_name: "Squires")
claire = Author.create(first_name: "Claire", last_name: "Kiefer")
jean = Author.create(first_name: "Jean", last_name: "Squires")

post1 = Post.create(title: "unbearable lightness of being", content: text)
post2 = Post.create(title: "dont buy a hoover vaccuum", content: text)
post3 = Post.create(title: "i am a vampire", content: text)
post4 = Post.create(title: "clickbait", content: text)
post5 = Post.create(title: "trump sux", content: text)
post6 = Post.create(title: "rage against the machine", content: text)
post7 = Post.create(title: "nevermind the album", content: text)
post8 = Post.create(title: "yes and no", content: text)
post9 = Post.create(title: "i love claire", content: text)
post10 = Post.create(title: "don't stop believin", content: text)

david.posts << [post1, post2, post3, post4, post5 ]
claire.posts << [post6, post7, post8]
jean.posts << [post9, post10]


comment1 = Comment.create(title: "a good post", stars: 5, content: text, author_name: "")
comment2 = Comment.create(title: "a great post", stars: 4, content: text, author_name: "david")
comment3 = Comment.create(title: "not a good post", stars: 1, content: text, author_name: "")
comment4 = Comment.create(title: "not a great post", stars: 2, content: text, author_name: "claire")
comment5 = Comment.create(title: "a good post", stars: 5, content: text, author_name: "")
comment6 = Comment.create(title: "a great post", stars: 4, content: text, author_name: "david")
comment7 = Comment.create(title: "not a good post", stars: 1, content: text, author_name: "")
comment8 = Comment.create(title: "not a great post", stars: 2, content: text, author_name: "claire")
comment9 = Comment.create(title: "a good post", stars: 5, content: text, author_name: "")
comment10 = Comment.create(title: "a great post", stars: 4, content: text, author_name: "david")
comment11 = Comment.create(title: "not a good post", stars: 1, content: text, author_name: "")
comment12 = Comment.create(title: "not a great post", stars: 2, content: text, author_name: "claire")

post1.comments << [comment1, comment2, comment3]
post2.comments << [comment5, comment6]
post3.comments << [comment7, comment8]
post4.comments << [comment9, comment10]
post5.comments << [comment12, comment12]
