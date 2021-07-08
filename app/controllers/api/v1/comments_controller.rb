class Api::V1::CommentsController < ApplicationController

    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: {comment: CommentSerializer.new(comment)}, status: :created
        else
            render json: {error: comment.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    def comment_params
        params.permit(:content, :beat_id, :user_id)
    end

end
