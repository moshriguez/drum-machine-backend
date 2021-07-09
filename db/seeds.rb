puts 'Destroying old data...'
User.destroy_all
Beat.destroy_all
Comment.destroy_all
BeatPad.destroy_all
# Pad.destroy_all

# puts 'Creating users...'

User.create(username: 'marc', password: 'Password1', bio: 'I am Marc and I like drumming and coding', musical_influences: 'I like indie, punk, metal, hip-hop.', avatar: 'image.jpeg')
User.create(username: 'waiyee', password: 'Password1', bio: 'I am Waiyee and I am awesome at drawing', musical_influences: 'I like most music, but especially French indie pop, indie rock, indie dance and most things indie.', avatar: 'image.jpeg')
User.create(username: 'marc27', password: 'Password1', bio: 'I am a clone of Marc', musical_influences: 'Favorite drummers: Travis Barker, Tre Cool, John Bonham, Keith Moon, Danny Carey, Blake Richardson', avatar: 'image.jpeg')
User.create(username: 'moshriguez', password: 'Password1', bio: 'I like metal, moshing and drumming', musical_influences: 'mosh, metal, black metal, speed metal, stoner metal, sludge', avatar: 'image.jpeg')
User.create(username: 'waiyee28', password: 'Password1', bio: 'I am a clone of Waiyee', musical_influences: 'I like KPOP', avatar: 'image.jpeg')



puts 'Creating beats...'

kick1 = Pad.find_by(name: 'Kick1')
kick2 = Pad.find_by(name: 'Kick2')
snare = Pad.find_by(name: 'Snare')
clap = Pad.find_by(name: 'Clap')
rim = Pad.find_by(name: 'Rim')
hh1 = Pad.find_by(name: 'HH1')
hh2 = Pad.find_by(name: 'HH2')
hh_open = Pad.find_by(name: 'HH Open')
ride = Pad.find_by(name: 'Ride')
shaker = Pad.find_by(name: 'Shaker')

# In case you need to create the pads again:
# kick1 = Pad.create(name: 'Kick1', sample_file: 'SB15_Drm_bd.wav')
# kick2 = Pad.create(name: 'Kick2', sample_file: 'kick13.wav')
# snare = Pad.create(name: 'Snare', sample_file: 'tracks_15 #006.wav')
# clap = Pad.create(name: 'Clap', sample_file: 'lil j clap 6.wav')
# rim = Pad.create(name: 'Rim', sample_file: 'mobb-snare1-qbh.wav')
# hh1 = Pad.create(name: 'HH1', sample_file: 'tracks_19 #004.wav')
# hh2 = Pad.create(name: 'HH2', sample_file: 'tight ass hat 3.wav')
# hh_open = Pad.create(name: 'HH Open', sample_file: 'tracks_61 #008.wav')
# ride = Pad.create(name: 'Ride', sample_file: 'c22 CshRd R02   x.wav')
# shaker = Pad.create(name: 'Shaker', sample_file: 'JBlaze_shaker5.wav')

20.times do
    beat = Beat.create(name: Faker::Ancient.god, description: Faker::Books::Lovecraft.sentence, tempo: Random.new.rand(40..280), user_id: User.all.sample.id)

    BeatPad.create(beat_id: beat.id, pad: kick1, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad: kick2, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad: snare, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad: clap, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad: rim, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad: hh1, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad: hh2, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad: hh_open, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad: ride, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    BeatPad.create(beat_id: beat.id, pad: shaker, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(32768..65535).to_s(2), panning: Random.new.rand(-1.0..1.0).round(2), pitch: Random.new.rand(0.4..2.0).round(2))
    
    puts 'creating comments...'
    3.times do
        Comment.create(beat_id: beat.id, commenter: User.all.sample, content: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
    end
end




puts 'Seeding complete.'