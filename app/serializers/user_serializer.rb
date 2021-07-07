class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio
  has_many :beats
  has_many :comments
  has_many :commented_beats, serializer: BeatSerializer
end
