# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Museum.destroy_all
Review.destroy_all

museums = Museum.create([
  {
    name: "Metropolitan Museum of Art",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/3/30/Metropolitan_Museum_of_Art_%28The_Met%29_-_Central_Park%2C_NYC.jpg",
  },
  {
    name: "American Museum of Natural History",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/e/ec/USA-NYC-American_Museum_of_Natural_History.JPG",
  },
  {
    name: "Brooklyn Museum",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/d/d1/Brooklyn_Museum_Night_2015.jpg",

  },
  {
    name: "Queens Museum",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/c/c8/Queens_Museum-1.jpg",

  },
  {
    name: "El Museo del Barrio",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/c/ca/WTM3_The_Fixers_0056.jpg",

  },
])

reviews = Review.create([
  {
    title: "Great Place",
    description: "i love this place",
    score: 5,
    museum: museums.first,
  },
  {
    title: "eh",
    description: "it was too hot",
    score: 1,
    museum: museums.first,
  },
])
