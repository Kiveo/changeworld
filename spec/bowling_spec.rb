require './app/models/bowling'
require './app/models/game'

RSpec.describe Bowling, "#score" do
  context "with no strikes or spares " do
    it "sums the pin count for each roll" do 
      bowling = Bowling.new 
      20.times { bowling.hit(4) }
      expect(bowling.score).to eq 80
    end
  end
end

RSpec.describe Game do 
  describe "#score" do 
    it "returns 0 for an all gutter game" do 
      game = Game.new 
      20.times { game.roll(0) }
      expect(game.score).to eq(0)
    end
  end
end
