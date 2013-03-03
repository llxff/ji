Fabricator :story do
  name { Faker::Lorem.sentence(6) }
  description { Faker::Lorem.paragraph(10) }
  story_category_id { Fabricate(:story_category).id }
end