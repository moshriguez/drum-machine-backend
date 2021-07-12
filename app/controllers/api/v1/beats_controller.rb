class Api::V1::BeatsController < ApplicationController
    # skip_before_action :authorized, only: [:show, :create, :update]

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
      
        if beat.save
            BeatPad.create(volume: params[:pad1][:volume], sequence: params[:pad1][:sequence], beat_id: beat.id, pad_id: params[:pad1][:pad_id], panning: params[:pad1][:panning], pitch: params[:pad1][:pitch])
            BeatPad.create(volume: params[:pad2][:volume], sequence: params[:pad2][:sequence], beat_id: beat.id, pad_id: params[:pad2][:pad_id], panning: params[:pad2][:panning], pitch: params[:pad2][:pitch])
            BeatPad.create(volume: params[:pad3][:volume], sequence: params[:pad3][:sequence], beat_id: beat.id, pad_id: params[:pad3][:pad_id], panning: params[:pad3][:panning], pitch: params[:pad3][:pitch])
            BeatPad.create(volume: params[:pad4][:volume], sequence: params[:pad4][:sequence], beat_id: beat.id, pad_id: params[:pad4][:pad_id], panning: params[:pad4][:panning], pitch: params[:pad4][:pitch])
            BeatPad.create(volume: params[:pad5][:volume], sequence: params[:pad5][:sequence], beat_id: beat.id, pad_id: params[:pad5][:pad_id], panning: params[:pad6][:panning], pitch: params[:pad6][:pitch])
            BeatPad.create(volume: params[:pad6][:volume], sequence: params[:pad6][:sequence], beat_id: beat.id, pad_id: params[:pad6][:pad_id], panning: params[:pad7][:panning], pitch: params[:pad7][:pitch])
            BeatPad.create(volume: params[:pad7][:volume], sequence: params[:pad7][:sequence], beat_id: beat.id, pad_id: params[:pad7][:pad_id], panning: params[:pad8][:panning], pitch: params[:pad8][:pitch])
            BeatPad.create(volume: params[:pad8][:volume], sequence: params[:pad8][:sequence], beat_id: beat.id, pad_id: params[:pad8][:pad_id], panning: params[:pad9][:panning], pitch: params[:pad9][:pitch])
            BeatPad.create(volume: params[:pad9][:volume], sequence: params[:pad9][:sequence], beat_id: beat.id, pad_id: params[:pad9][:pad_id], panning: params[:pad10][:panning], pitch: params[:pad10][:pitch])
            BeatPad.create(volume: params[:pad10][:volume], sequence: params[:pad10][:sequence], beat_id: beat.id, pad_id: params[:pad10][:pad_id], panning: params[:pad1][:panning], pitch: params[:pad1][:pitch])
            render json: {beat: BeatSerializer.new(beat), message: 'Your beat was saved successfully.'}, status: :created
        else
            render json: {error: beat.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        beat = Beat.find(params[:id])
        pad1 = BeatPad.find(params[:pad1][:id])
        pad2 = BeatPad.find(params[:pad2][:id])
        pad3 = BeatPad.find(params[:pad3][:id])
        pad4 = BeatPad.find(params[:pad4][:id])
        pad5 = BeatPad.find(params[:pad5][:id])
        pad6 = BeatPad.find(params[:pad6][:id])
        pad7 = BeatPad.find(params[:pad7][:id])
        pad8 = BeatPad.find(params[:pad8][:id])
        pad9 = BeatPad.find(params[:pad9][:id])
        pad10 = BeatPad.find(params[:pad10][:id])
        if beat.update(beat_params)
            pad1.update(volume: params[:pad1][:volume], sequence: params[:pad1][:sequence], panning: params[:pad1][:panning], pitch: params[:pad1][:pitch], pad_id: params[:pad1][:pad_id] )
            pad2.update(volume: params[:pad2][:volume], sequence: params[:pad2][:sequence], panning: params[:pad2][:panning], pitch: params[:pad2][:pitch], pad_id: params[:pad2][:pad_id] )
            pad3.update(volume: params[:pad3][:volume], sequence: params[:pad3][:sequence], panning: params[:pad3][:panning], pitch: params[:pad3][:pitch], pad_id: params[:pad3][:pad_id] )
            pad4.update(volume: params[:pad4][:volume], sequence: params[:pad4][:sequence], panning: params[:pad4][:panning], pitch: params[:pad4][:pitch], pad_id: params[:pad4][:pad_id] )
            pad5.update(volume: params[:pad5][:volume], sequence: params[:pad5][:sequence], panning: params[:pad5][:panning], pitch: params[:pad5][:pitch], pad_id: params[:pad5][:pad_id] )
            pad6.update(volume: params[:pad6][:volume], sequence: params[:pad6][:sequence], panning: params[:pad6][:panning], pitch: params[:pad6][:pitch], pad_id: params[:pad6][:pad_id] )
            pad7.update(volume: params[:pad7][:volume], sequence: params[:pad7][:sequence], panning: params[:pad7][:panning], pitch: params[:pad7][:pitch], pad_id: params[:pad7][:pad_id] )
            pad8.update(volume: params[:pad8][:volume], sequence: params[:pad8][:sequence], panning: params[:pad8][:panning], pitch: params[:pad8][:pitch], pad_id: params[:pad8][:pad_id] )
            pad9.update(volume: params[:pad9][:volume], sequence: params[:pad9][:sequence], panning: params[:pad9][:panning], pitch: params[:pad9][:pitch], pad_id: params[:pad9][:pad_id] )
            pad10.update(volume: params[:pad10][:volume], sequence: params[:pad10][:sequence], panning: params[:pad10][:panning], pitch: params[:pad10][:pitch], pad_id: params[:pad10][:pad_id] )
            render json: {beat: BeatSerializer.new(beat), message: 'Your beat was saved successfully.'}, status: :created
        else
            render json: {error: beat.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    def beat_params
        params.permit(:name, :description, :user_id, :tempo, :pad1, :pad2, :pad3, :pad4, :pad5, :pad6, :pad7, :pad8, :pad9, :pad10)
    end
end
