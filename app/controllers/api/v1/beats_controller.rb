class Api::V1::BeatsController < ApplicationController

    def create
        beat = Beat.new(beat_params)
        if beat.save
            render json: {beat: BeatSerializer.new(beat)}, status: :created
        else
            render json: {error: beat.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    def beat_params
        params.permit(:name, :description, :user_id)
    end
end
