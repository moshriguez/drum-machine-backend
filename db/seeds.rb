puts 'Destroying old data...'
Beat.destroy_all
Comment.destroy_all
BeatPad.destroy_all

# puts 'Creating users...'

# User.create(username: 'marc1', password: 'Password1', bio: 'I am marc')
# User.create(username: 'marc2', password: 'Password1', bio: 'I am marc')
# User.create(username: 'marc3', password: 'Password1', bio: 'I am marc')
# User.create(username: 'marc4', password: 'Password1', bio: 'I am marc')
# User.create(username: 'marc5', password: 'Password1', bio: 'I am marc')



puts 'Creating beats...'

kick = Pad.find(1)
snare = Pad.find(2)
hi_hats = Pad.find(3)
open_hi_hats = Pad.find(4)
# kick = Pad.create(name: 'kick', sample_file: 'kick.wav')
# snare = Pad.create(name: 'snare', sample_file: 'snare.wav')
# hi_hats = Pad.create(name: 'hi-hats', sample_file: 'hi-hats.wav')
# open_hi_hats = Pad.create(name: 'open hi-hats', sample_file: 'open hi-hats.wav')

20.times do
    beat = Beat.create(name: Faker::Ancient.god, description: Faker::Books::Lovecraft.sentence, tempo: Random.new.rand(40..280), user_id: Random.new.rand(1..6))

    BeatPad.create(beat_id: beat.id, pad: kick, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(8..15).to_s(2))
    BeatPad.create(beat_id: beat.id, pad: snare, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(8..15).to_s(2))
    BeatPad.create(beat_id: beat.id, pad: hi_hats, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(8..15).to_s(2))
    BeatPad.create(beat_id: beat.id, pad: open_hi_hats, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(8..15).to_s(2))
    
    puts 'creating comments...'
    3.times do
        Comment.create(beat_id: beat.id, commenter: User.all.sample, content: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
    end
end




puts 'Seeding complete.'