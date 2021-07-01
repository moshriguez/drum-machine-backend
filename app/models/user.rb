class User < ApplicationRecord
    has_secure_password
    has_many :beats

    has_many :comments
    # has_many :beats, through: :comments, as: :beat_comments

    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :password, length: {minimum: 6, maximum: 20}
end
