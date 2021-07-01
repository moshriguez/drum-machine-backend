class Comment < ApplicationRecord
    belongs_to :commenter, :class_name => "User", :foriegn_key => "user_id"
    belongs_to :beat
end
