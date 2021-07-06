class Api::V1::BeatsController < ApplicationController
    skip_before_action :authorized, only: [:index]


    def index
        beats = Beat.all
        # only returns the 5 most recently created beats
        render json: {beats: beats[-5, beats.length]}
    end

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
