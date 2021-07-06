puts 'Destroying old data...'
# Beat.destroy_all
# Comment.destroy_all
# BeatPad.destroy_all

puts 'Creating beats...'

kick = Pad.find(1)
snare = Pad.find(2)
hi_hats = Pad.find(3)
open_hi_hats = Pad.find(4)

20.times do
    beat = Beat.create(name: Faker::Ancient.god, description: Faker::Books::Lovecraft.sentence, tempo: Random.new.rand(40..280), user_id: Random.new.rand(1..6))

    BeatPad.create(beat: beat, pad: kick, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(8..15).to_s(2))
    BeatPad.create(beat: beat, pad: snare, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(8..15).to_s(2))
    BeatPad.create(beat: beat, pad: hi_hats, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(8..15).to_s(2))
    BeatPad.create(beat: beat, pad: open_hi_hats, volume: Random.new.rand(0..1.5).round(2), sequence: Random.new.rand(8..15).to_s(2))
    
    # puts 'creating comments...'
    # 3.times do
    #     Comment.create(beat: beat, user: User.all.sample, content: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
    # end
end




puts 'Seeding complete.'