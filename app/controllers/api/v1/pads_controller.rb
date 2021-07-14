class Api::V1::PadsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        pads = Pad.all.sort { |a, b| a.sample_type <=> b.sample_type }
        render json: {samples: pads.map {|pad| PadSerializer.new(pad)}}
    end

    def create
        pad = Pad.new(pad_params)
        if pad.save
            render json: { pad: PadSerializer.new(pad) }, status: :created
        else
            render json: { error: pad.errors.full_messages }, status: :not_acceptable
        end
    end

    private
    def pad_params
        params.permit(:id, :name, :sample_file, :sample_type)
    end
end
