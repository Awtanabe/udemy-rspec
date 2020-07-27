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

RSpec.describe 'test' do
  it 'test' do
    three_ele_arr = double # [1,2,3]
    allow(three_ele_arr).to receive(:first).with(no_args).and_return(1)
    allow(three_ele_arr).to receive(:first).with(1).and_return([1])
    allow(three_ele_arr).to receive(:first).with(3).and_return([1,2,3])

    expect(three_ele_arr.first(1)).to eq([1])
    expect(three_ele_arr.first(3)).to eq([1,2,3])
  end
end