describe Bird do
  it 'should initaliz' do
    king_fisher = Bird.new
    expect(king_fisher.class).to eq Bird
    expect(king_fisher.get_color).to eq nil
    expect(king_fisher.get_spotted).to eq nil
    expect(king_fisher.get_can_fly).to eq nil
    expect(king_fisher.get_length).to eq 0
  end

  it  'should let us set the color of the bird' do
    king_fisher = Bird.new
    king_fisher.set_color 'royal blue and orange'
    expect(king_fisher.get_color).to eq 'royal blue and orange'
  end

  it 'should let us set where the bird was spotted' do
    king_fisher = Bird.new
    king_fisher.set_spotted 'America'
    expect(king_fisher.get_spotted).to eq 'America'
  end

  it 'should let us know if the bird could fly or not' do
    king_fisher = Bird.new
    king_fisher.set_can_fly true
    expect(king_fisher.get_can_fly).to eq true
  end

  it 'should let us know lenght of the bird' do
    king_fisher = Bird.new
    king_fisher.set_length '25'
    expect(king_fisher.get_length).to eq 25
  end

  it 'should let the bird tweet tweet' do
    king_fisher = Bird.new
    expect(king_fisher.chirp).to eq 'tweet! tweet!'
  end
  it 'should display fly if the bird can fly' do
    king_fisher = Bird.new
    king_fisher.set_can_fly true
    expect(king_fisher.flying_ability).to eq 'I can Fly!'
  end
  it 'should let the bird waddle' do
    king_fisher = Bird.new
    expect(king_fisher.waddle).to eq 'waddle! waddle!'
  end
  it 'should let the bird peck' do
    king_fisher = Bird.new
    expect(king_fisher.peck).to eq 'peck! peck!'
  end
  it 'should let describe the bird' do
    king_fisher = Bird.new
    king_fisher.set_spotted 'America'
    king_fisher.set_can_fly true
    king_fisher.flying_ability
    expect(king_fisher.describe).to eq 'I am a Kingfisher. I was spotted in America by my royal blue and orange feather. I can Fly!'
  end

end
