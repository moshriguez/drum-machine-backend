class BeatSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :tempo
  belongs_to :user
  
  has_many :comments
  has_many :beat_pads
end
