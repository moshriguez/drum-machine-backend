class User < ApplicationRecord
    has_secure_password
    has_many :beats

    has_many :comments
    has_many :commented_beats, through: :comments

    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :password, length: {minimum: 6, maximum: 20}
end
