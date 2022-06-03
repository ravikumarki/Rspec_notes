class Card
    attr_accessor :rank,:suite
 
    def initialize(rank,suite)
      @rank =rank
      @suite = suite
    end
  end
 
 RSpec.describe Card do
   let(:card) { Card.new('Ace','Spades')}  
   it 'has a rank' do
     expect(card.rank).to eq('Ace')
     card.rank ='queen'
     expect(card.rank).to eq('queen')
   end
   it 'has a suite' do
     expect(card.suite).to eq('Spades')
   end
   it 'has a custom error msg' do
    card.suite = 'nonsense'
    comparison ='Spades'
    expect(card.suite).to eq(comparison),"Hey, I expected #{comparison} but I got #{card.suite} instead!"
  end
 end