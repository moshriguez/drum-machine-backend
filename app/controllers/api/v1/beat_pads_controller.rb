class Api::V1::BeatPadsController < ApplicationController

    def create
        beat_pad = BeatPad.new(beat_pad_params)
        if beat_pad.save
            render json: {beat_pad: beat_pad}, status: :created
        else
            render json: {error: beat_pad.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    def beat_pad_params
        params.permit(:beat_id, :pad_id, :sequence, :volume)
    end
end
