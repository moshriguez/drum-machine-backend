class Api::V1::BeatsController < ApplicationController
    skip_before_action :authorized, only: [:index]


    def index
        beats = Beat.all
        recent_beats = beats[-5, beats.length].map {|beat| BeatSerializer.new(beat)}
        
        # only returns the 5 most recently created beats
        render json: {feed: recent_beats}
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
