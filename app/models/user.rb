class User < ApplicationRecord
    validates :email, :presence => true, :uniqueness => true, format: { with: /\A(?=[^@]*[a-z])(?![^@]*(?:\+\.|\.\+))[a-z\d+_.-]+@[a-z\d-]+\.[a-z\d-]*[a-z]\z/, message: "must be contain a '.' "}
    validates :first_name, format: { with: /\A[a-zA-Z]+\z/, message: "must contain letters only" }
    validates :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "must contain letters only" }
    self.per_page = 10
end
