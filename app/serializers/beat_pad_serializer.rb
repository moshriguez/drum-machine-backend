class BeatPadSerializer < ActiveModel::Serializer
    attributes :id, :volume, :sequence, :pad_id, :beat_id
    belongs_to :beat
    belongs_to :pad
      
    attribute :sample_name do
      self.object.pad.name
    end

    attribute :sample_file do
        self.object.pad.sample_file
    end
  end
  