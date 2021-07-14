puts 'Destroying old data...'
# User.destroy_all
Beat.destroy_all
Comment.destroy_all
BeatPad.destroy_all
Pad.destroy_all

# puts 'Creating users...'

# User.create(username: 'marc', password: 'Password1', bio: 'I am Marc and I like drumming and coding', musical_influences: 'I like indie, punk, metal, hip-hop.', avatar: 'image.jpeg')
# User.create(username: 'waiyee', password: 'Password1', bio: 'I am Waiyee and I am awesome at drawing', musical_influences: 'I like most music, but especially French indie pop, indie rock, indie dance and most things indie.', avatar: 'image.jpeg')
# User.create(username: 'marc27', password: 'Password1', bio: 'I am a clone of Marc', musical_influences: 'Favorite drummers: Travis Barker, Tre Cool, John Bonham, Keith Moon, Danny Carey, Blake Richardson', avatar: 'image.jpeg')
# User.create(username: 'moshriguez', password: 'Password1', bio: 'I like metal, moshing and drumming', musical_influences: 'mosh, metal, black metal, speed metal, stoner metal, sludge', avatar: 'image.jpeg')
# User.create(username: 'waiyee28', password: 'Password1', bio: 'I am a clone of Waiyee', musical_influences: 'I like KPOP', avatar: 'image.jpeg')



puts 'Creating beats...'

# kick1 = Pad.find_by(name: 'Kick1')
# kick2 = Pad.find_by(name: 'Kick2')
# snare = Pad.find_by(name: 'Snare')
# clap = Pad.find_by(name: 'Clap')
# rim = Pad.find_by(name: 'Rim')
# hh1 = Pad.find_by(name: 'HH1')
# hh2 = Pad.find_by(name: 'HH2')
# hh_open = Pad.find_by(name: 'HH Open')
# ride = Pad.find_by(name: 'Ride')
# shaker = Pad.find_by(name: 'Shaker')

# In case you need to create the pads again:
kick1 = Pad.create(name: 'Kick1', sample_file: 'SB15_Drm_bd.wav', sample_type: 'kick')
kick2 = Pad.create(name: 'Kick2', sample_file: 'kick13.wav', sample_type: 'kick')
kick3 = Pad.create(name: 'Kick3', sample_file: 'Kick3.wav', sample_type: 'kick')
snare1 = Pad.create(name: 'Snare1', sample_file: 'tracks_15 #006.wav', sample_type: 'snare')
snare2 = Pad.create(name: 'Snare2', sample_file: 'Snare4.wav', sample_type: 'snare')
clap = Pad.create(name: 'Clap', sample_file: 'lil j clap 6.wav', sample_type: 'clap')
rim = Pad.create(name: 'Rim', sample_file: 'mobb-snare1-qbh.wav', sample_type: 'percussion')
tom1 = Pad.create(name: 'Tom1', sample_file: 'cSonor Tom 2 R03.wav', sample_type: 'percussion')
tom2 = Pad.create(name: 'Tom2', sample_file: 'cSonor Tom 3 R03.wav', sample_type: 'percussion')
tom3 = Pad.create(name: 'Tom3', sample_file: 'cSonor Tom 4 R03.wav', sample_type: 'percussion')
hh1 = Pad.create(name: 'HH1', sample_file: 'tracks_19 #004.wav', sample_type: 'hi-hats')
hh2 = Pad.create(name: 'HH2', sample_file: 'tight ass hat 3.wav', sample_type: 'hi-hats')
hh_open1 = Pad.create(name: 'HH Open1', sample_file: 'tracks_61 #008.wav', sample_type: 'hi-hats')
hh_open2 = Pad.create(name: 'HH Open2', sample_file: 'Vhat18.wav', sample_type: 'hi-hats')
ride1 = Pad.create(name: 'Ride1', sample_file: 'c22 CshRd R02   x.wav', sample_type: 'cymbal')
ride2 = Pad.create(name: 'Ride2', sample_file: 'ro 1 - CY1075.WAV', sample_type: 'cymbal')
crash1 = Pad.create(name: 'Crash1', sample_file: 'c22 CrstBlRd 01 x.wav', sample_type: 'cymbal')
crash2 = Pad.create(name: 'Crash2', sample_file: 'c21 AAXtreme1 01.wav', sample_type: 'cymbal')
shaker = Pad.create(name: 'Shaker', sample_file: 'JBlaze_shaker5.wav', sample_type: 'percussion')
triangle = Pad.create(name: 'Triangle', sample_file: 'LIL J Bell 2.wav', sample_type: 'percussion')
stab = Pad.create(name: 'Stab', sample_file: 'VStb1.wav', sample_type: 'misc')

20.times do
    beat = Beat.create(name: Faker::Ancient.god, description: Faker::Books::Lovecraft.sentence, tempo: Random.new.rand(40..280), user_id: User.all.sample.id)

    BeatPad.create(beat_id: beat.id, pad_id: Pad.all.sample.id, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad_id: Pad.all.sample.id, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad_id: Pad.all.sample.id, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad_id: Pad.all.sample.id, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad_id: Pad.all.sample.id, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad_id: Pad.all.sample.id, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad_id: Pad.all.sample.id, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad_id: Pad.all.sample.id, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad_id: Pad.all.sample.id, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad_id: Pad.all.sample.id, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    
    puts 'creating comments...'
    3.times do
        Comment.create(beat_id: beat.id, commenter: User.all.sample, content: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
    end
end




puts 'Seeding complete.'