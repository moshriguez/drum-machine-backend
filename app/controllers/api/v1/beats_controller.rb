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
        pad1 = Pad.find(5)
        pad2 = Pad.find(6)
        pad3 = Pad.find(7)
        pad4 = Pad.find(8)
        pad5 = Pad.find(9)
        pad6 = Pad.find(10)
        pad7 = Pad.find(11)
        pad8 = Pad.find(12)
        pad9 = Pad.find(13)
        pad10 = Pad.find(14)
        if beat.save
            BeatPad.create(volume: params[:pad1][:volume], sequence: params[:pad1][:sequence], beat_id: beat.id, pad_id: pad1.id)
            BeatPad.create(volume: params[:pad2][:volume], sequence: params[:pad2][:sequence], beat_id: beat.id, pad_id: pad2.id)
            BeatPad.create(volume: params[:pad3][:volume], sequence: params[:pad3][:sequence], beat_id: beat.id, pad_id: pad3.id)
            BeatPad.create(volume: params[:pad4][:volume], sequence: params[:pad4][:sequence], beat_id: beat.id, pad_id: pad4.id)
            BeatPad.create(volume: params[:pad5][:volume], sequence: params[:pad5][:sequence], beat_id: beat.id, pad_id: pad5.id)
            BeatPad.create(volume: params[:pad6][:volume], sequence: params[:pad6][:sequence], beat_id: beat.id, pad_id: pad6.id)
            BeatPad.create(volume: params[:pad7][:volume], sequence: params[:pad7][:sequence], beat_id: beat.id, pad_id: pad7.id)
            BeatPad.create(volume: params[:pad8][:volume], sequence: params[:pad8][:sequence], beat_id: beat.id, pad_id: pad8.id)
            BeatPad.create(volume: params[:pad9][:volume], sequence: params[:pad9][:sequence], beat_id: beat.id, pad_id: pad9.id)
            BeatPad.create(volume: params[:pad10][:volume], sequence: params[:pad10][:sequence], beat_id: beat.id, pad_id: pad10.id)
            render json: {beat: BeatSerializer.new(beat), message: 'Your beat was saved successfully.'}, status: :created
        else
            render json: {error: beat.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        beat = Beat.find(params[:id])
        pad1 = beat.beat_pads.find{|bp| bp.pad_id == 5}
        pad2 = beat.beat_pads.find{|bp| bp.pad_id == 6}
        pad3 = beat.beat_pads.find{|bp| bp.pad_id == 7}
        pad4 = beat.beat_pads.find{|bp| bp.pad_id == 8}
        pad5 = beat.beat_pads.find{|bp| bp.pad_id == 9}
        pad6 = beat.beat_pads.find{|bp| bp.pad_id == 10}
        pad7 = beat.beat_pads.find{|bp| bp.pad_id == 11}
        pad8 = beat.beat_pads.find{|bp| bp.pad_id == 12}
        pad9 = beat.beat_pads.find{|bp| bp.pad_id == 13}
        pad10 = beat.beat_pads.find{|bp| bp.pad_id == 14}
        if beat.update(beat_params)
            pad1.update(volume: params[:pad1][:volume], sequence: params[:pad1][:sequence])
            pad2.update(volume: params[:pad2][:volume], sequence: params[:pad2][:sequence])
            pad3.update(volume: params[:pad3][:volume], sequence: params[:pad3][:sequence])
            pad4.update(volume: params[:pad4][:volume], sequence: params[:pad4][:sequence])
            pad5.update(volume: params[:pad5][:volume], sequence: params[:pad5][:sequence])
            pad6.update(volume: params[:pad6][:volume], sequence: params[:pad6][:sequence])
            pad7.update(volume: params[:pad7][:volume], sequence: params[:pad7][:sequence])
            pad8.update(volume: params[:pad8][:volume], sequence: params[:pad8][:sequence])
            pad9.update(volume: params[:pad9][:volume], sequence: params[:pad9][:sequence])
            pad10.update(volume: params[:pad10][:volume], sequence: params[:pad10][:sequence])
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
