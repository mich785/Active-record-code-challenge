# Active-record-code-challenge
## Introduction
This application allows users to review products and perform various operations related to reviews, products, and users. It leverages the Active Record ORM to manage database operations and associations between models.

## Migrations
A user table,products table and reviews table are created
The reviews table has:
*  star_rating column
* comment column
* product_id column (which is the product foreign key)
* user_id column (which is the user foreign key)

## Object Association Methods
The following methods are available for the respective classes:

### Review
* Review#user: Returns the User instance associated with this Review.
* Review#product: Returns the Product instance associated with this Review.

### Product
* Product#reviews: Returns a collection of all the Reviews for the Product.
* Product#users: Returns a collection of all the Users who reviewed the product

### User
* User#reviews: Returns a collection of all the Reviews given by the User.
* User#products: Returns a collection of all the Products reviewed by the User.

## Aggregate and Association Methods
The following methods are available for the respective classes:

### Review
* Review#print_review: Prints a formatted string in the terminal representing  the Review. The format is as follows: "Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}".
### Product
* Product#leave_review(user, star_rating, comment): Creates a new Review in the database associated with the given User, star_rating, and comment for this Product.

* Product#print_all_reviews: Prints a string in the terminal representing each review for this Product. Each review is formatted as follows: "Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}".

* Product#average_rating: Returns a float representing the average star rating for all reviews of this Product.

### User
* User#favorite_product: Returns the Product instance that has the highest star rating from this User.

* User#remove_reviews(product): Removes all reviews of the specified Product for this User. This method deletes the associated rows from the reviews table.

## ERD 
![Entity Relationship Diagram](https://raw.githubusercontent.com/mich785/Active-record-code-challenge/ba2a0d778eb5208f2c21ed3239466b62e6b42037/Untitled%20Diagram.drawio.png?token=A6FT7EVWNXMDBDWZ3YGWYZ3EPUEIO)

## License
This project is licensed under the GNU License










