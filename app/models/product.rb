class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review (user,star_rating,comment)
        review = reviews.create(user: user, star_rating: star_rating, comment: comment)
    end

    def print_all_reviews
        reviews.each do |review|
            puts "Review for #{self.name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"
        end
    end

    def average_rating
    total_reviews = reviews.count
    return 0.0 if total_reviews.zero?

    total_star_ratings = reviews.sum(:star_rating)
    total_star_ratings.to_f / total_reviews 
    end
end