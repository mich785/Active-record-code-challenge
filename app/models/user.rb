class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def favorite_product
        highest_rated_review = reviews.order(star_rating: :desc).first
        highest_rated_review.product if highest_rated_review
    end

    def remove_reviews product
        reviews.where(product: product).destroy_all
    end
end

