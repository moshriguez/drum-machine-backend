class BeatSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :tempo, :user_id
  belongs_to :user
  
  has_many :comments
  has_many :beat_pads

  attribute :username do
    self.object.user.username
  end
end
