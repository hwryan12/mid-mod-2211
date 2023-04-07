require 'rails_helper'

RSpec.describe FdcFacade do
  describe 'instance methods' do
    describe '#foods' do
      it 'returns food data' do
        search = "sweet potatoes"
        foods = FdcFacade.new(search).foods
  
        expect(foods).to be_an(Array)
        expect(foods.first).to be_a(Food)
      end
    end

    describe '#total_results' do
      it 'returns total results' do
        search = "sweet potatoes"
        foods = FdcFacade.new(search).total_results

        expect(foods).to be_an(Integer)
      end
    end
  end
end