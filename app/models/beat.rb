class Beat < ApplicationRecord
    belongs_to :user
    
    has_many :comments, dependent: :destroy
    has_many :users, through: :comments

    has_many :beat_pads, dependent: :destroy
    has_many :pads, through: :beat_pads

    validates :name, presence: true, uniqueness: { scope: :user, case_sensitive: false }
    validates :description, presence: true

end
