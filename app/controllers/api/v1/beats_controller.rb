class Api::V1::BeatsController < ApplicationController
    skip_before_action :authorized, only: [:show, :create]

    def index
        beats = Beat.all
        recent_beats = beats[-5, beats.length].map {|beat| BeatSerializer.new(beat)}
        
        # only returns the 5 most recently created beats
        render json: {feed: recent_beats}
    end

    def show
        beat = Beat.find_by(id: params[:id])
        if beat
            render json: {beat: BeatSerializer.new(beat)}
        else
            render json: {error: beat.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def create
        beat = Beat.new(beat_params)
        pad1 = Pad.find(1)
        pad2 = Pad.find(2)
        pad3 = Pad.find(3)
        pad4 = Pad.find(4)
        if beat.save
            BeatPad.create(volume: params[:pad1][:volume], sequence: params[:pad1][:sequence], beat_id: beat.id, pad_id: pad1.id)
            BeatPad.create(volume: params[:pad2][:volume], sequence: params[:pad2][:sequence], beat_id: beat.id, pad_id: pad2.id)
            BeatPad.create(volume: params[:pad3][:volume], sequence: params[:pad3][:sequence], beat_id: beat.id, pad_id: pad3.id)
            BeatPad.create(volume: params[:pad4][:volume], sequence: params[:pad4][:sequence], beat_id: beat.id, pad_id: pad4.id)
            render json: {beat: BeatSerializer.new(beat), message: 'Your beat was saved successfully.'}, status: :created
        else
            render json: {error: beat.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        
    end

    private
    def beat_params
        params.permit(:name, :description, :user_id, :tempo, :pad1, :pad2, :pad3, :pad4)
    end
end
