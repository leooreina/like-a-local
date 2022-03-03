

# User.create(name: "User 1", email: "test1@test.com", password: 123123)

# User.create(name: "User 2", email: "test2@test.com", password: 123123)

# User.create(name: "User 3", email: "test3@test.com", password: 123123)


Experience.create!(
  location: "Fidalga, 20",
  title: "Pub Craw",
  price: 50,
  description: "Drink until the end of the days",
  week_days: "Monday",
  starting_time: 20,
  duration: 3,
  user_id: 1
)

Experience.create!(
  location: "Av. Paulista, 120",
  title: "Cycle around",
  price: 10,
  description: "Cycle around the avenue and get your phone stoled",
  week_days: "Sunday",
  starting_time: 16,
  duration: 1,
  user_id: 1
)

Experience.create!(
  location: "Weserstrasse, 75",
  title: "Alternative Berlin",
  price: 10,
  description: "Go around this cool neighbourhood",
  week_days: "Saturday",
  starting_time: 19,
  duration: 2,
  user_id: 2
)
