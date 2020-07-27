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

# RSpec.describe Hash do
#   # let(:my_hash) { {} }

#   it 'should start off empty' do
#     expect(subject.length).to eq(0)
#     subject[:some_key] = "Some Value"
#     expect(subject.length).to eq(1)
#   end

#   it 'is isolated between examples' do
#     expect(subject.length).to eq(0)
#   end
# end

RSpec.describe Hash do
  subject(:bob) do
    { a: 1, b: 2 }
  end

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe 'nexted example' do
    it 'has two key-value pairs' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end
