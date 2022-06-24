# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!([
    {name: "Pascal", photo: "https://unsplash.com/photos/QKuAz8zJRng", bio: "Software developer.", posts_counter: 4},
    {name: "Linda", photo: "https://unsplash.com/photos/suNS4qGA1i0", bio: "Designer and QA tester.", posts_counter: nil}
  ])
  
  Post.create!([
  {author: User.first,title: "Frontend dev", text: "Frontend dev role", comments_counter: nil, likes_counter: nil },
  {author: User.first, title: "Backend dev", text: "Backend dev role", comments_counter: nil, likes_counter: nil },
  {author: User.find(2),title: "QA tester", text: "QA tester role", comments_counter: nil, likes_counter: nil},
  {author: User.find(2),title: "Full-stack dev", text: "Full-stack dev role", comments_counter: nil, likes_counter: nil}
  ]),
  
  Comment.create!([
    {author_id: 1, post_id: 2, text: "commemt1"},
    {author_id: 1, post_id: 2, text: "comment2"},
    {author_id: 1, post_id: 2, text: "comment3"},
    {author_id: 1, post_id: 2, text: "comment4"},
    {author_id: 1, post_id: 2, text: "comment5"},
    {author_id: 1, post_id: 2, text: "comment6"}
  ])