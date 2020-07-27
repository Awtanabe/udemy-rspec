class Actor
  def initialize(name)
    @name = name
  end
  def ready?
    sleep(3)
    true
  end
  def act
    "I love you baby"
  end

  def fall_off_ladder
    "Call may agent"
  end
  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
    end
  end
end

# actor = Actor.new("Brad paid")
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  let(:stundman){ double('Mr danger', ready?: true, act: "call my aget", fall_off_ladder: 'sure', light_on_fire: true)}
  subject { described_class.new(stundman)}

    describe 'ddd' do
      it 'test' do
        expect(stundman).to receive(:light_on_fire).once
        expect(stundman).to receive(:light_on_fire).exactly(1).times
        expect(stundman).to receive(:light_on_fire).at_least(1).times
        expect(stundman).to receive(:light_on_fire).at_most(1).times
        subject.start_shooting
      end
    end
end