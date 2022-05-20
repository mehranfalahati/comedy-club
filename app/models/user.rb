class User < ApplicationRecord
    validates :email, :presence => true, :uniqueness => true
    validates :first_name, format: { with: /\A[a-zA-Z]+\z/, message: "must contain letters only" }
    validates :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "must contain letters only" }
end
