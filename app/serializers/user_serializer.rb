class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :musical_influences
  has_many :beats
  has_many :comments
  has_many :commented_beats, serializer: BeatSerializer
end
