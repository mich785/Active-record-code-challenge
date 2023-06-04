Product.create(name: "Product 1", price: 10)
Product.create(name: "Product 2", price: 19)
Product.create(name: "Product 3", price: 15)

User.create(name: "User 1", email: "user1@example.com")
User.create(name: "User 2", email: "user2@example.com")
User.create(name: "User 3", email: "user3@example.com")

Review.create(star_rating: 4, comment: "Great product!", product_id: 1, user_id: 1)
Review.create(star_rating: 5, comment: "Excellent service!", product_id: 2, user_id: 2)
Review.create(star_rating: 3, comment: "Average experience.", product_id: 3, user_id: 3)