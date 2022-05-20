class User < ApplicationRecord
    validates :email, :presence => true, :uniqueness => true, format: { with: /\A[a-zA-Z0-9]((?!\.\.)(?!\+\+)[\w\-+.])*[\w\-]@[a-zA-Z0-9\-]+(?:\.[a-zA-Z0-9\-]*)+[a-zA-Z]\z/, message: "must be a valid email"}
    validates :first_name, format: { with: /\A[a-zA-Z]+\z/, message: "must contain letters only" }
    validates :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "must contain letters only" }
    self.per_page = 6
end
