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

class Prince
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe Prince do
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }

  it 'represents a great person' do
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Louis')
  end
end

