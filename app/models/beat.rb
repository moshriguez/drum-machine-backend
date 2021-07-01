class Beat < ApplicationRecord
    belongs_to :user
    
    has_many :comments
    has_many :users, through: :comments

    has_many :beat_pads
    has_many :pads, through: :beat_pads

end
