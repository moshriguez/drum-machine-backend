class CommentSerializer < ActiveModel::Serializer
    attributes :id, :content, :user_id, :beat_id
    belongs_to :commenter
    belongs_to :commented_beat

    attribute :username do
        self.object.commenter.username
    end
    
  end
  