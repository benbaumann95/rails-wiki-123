# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all

def fake_content
  paragraphs = []
  paragraphs << Faker::Beer.style
  paragraphs << Faker::Beer.hop
  paragraphs << Faker::Beer.yeast
  paragraphs << Faker::Beer.malts
  paragraphs << Faker::Beer.alcohol
  paragraphs.flatten.join("\n\n")
end

20.times do
  Article.create(
    title: Faker::Beer.name,
    content: fake_content
  )
end
