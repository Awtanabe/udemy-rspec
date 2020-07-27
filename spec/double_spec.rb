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

class Person
  def a
    sleep(3)
    "Hello"
  end
end

RSpec.describe 'test' do
  it 'test' do
    person = double(a: "Hello", b: 20)
    expect(person.a).to eq("Hello")
  end

  it 'test' do
    person = instance_double(Person, a: "Hello", b:20)
    expect(person.a).to eq("Hello")
  end
end