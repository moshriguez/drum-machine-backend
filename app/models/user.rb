class User < ApplicationRecord
    has_secure_password
    has_many :beats, dependent: :destroy

    has_many :comments, dependent: :destroy
    has_many :commented_beats, through: :comments

    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :password, length: {minimum: 6, maximum: 20}, if: -> {new_record? || !password.nil?}
end
