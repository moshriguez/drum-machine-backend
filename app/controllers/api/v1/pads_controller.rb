class Api::V1::PadsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        pads = Pad.all
        render json: {samples: pads.map {|pad| PadSerializer.new(pad)}}
    end
end
