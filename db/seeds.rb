# This is where you can create initial data for your app.
require_relative "../models/restaurant"

Restaurant.create(name: "The Fox", category: "Pub")
Restaurant.create(name: "Poppies", category: "Fish and Chips")
Restaurant.create(name: "KFC", category: "Chicken")
