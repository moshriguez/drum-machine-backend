class Comment < ApplicationRecord
    belongs_to :commenter, :class_name => "User", :foreign_key => "user_id"
    belongs_to :commented_beat, :class_name => "Beat", :foreign_key => "beat_id"
end
