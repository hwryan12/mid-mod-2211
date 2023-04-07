require 'rails_helper'

describe 'FDC Service' do
  context 'instance methods' do
    context '#food_search' do
      it 'returns food data' do
        food = 'sweet potatoes'

        results = FdcService.new.food_search(food)

        expect(results).to be_a(Hash)
        expect(results).to have_key(:totalHits)
        expect(results[:totalHits]).to be_an(Integer)
        expect(results).to have_key(:foods)
        expect(results[:foods]).to be_an(Array)
        expect(results[:foods].first).to be_a(Hash)
        expect(results[:foods].first).to have_key(:gtinUpc)
        expect(results[:foods].first[:gtinUpc]).to be_a(String)
        expect(results[:foods].first).to have_key(:description)
        expect(results[:foods].first[:description]).to be_a(String)
        expect(results[:foods].first).to have_key(:brandOwner)
        expect(results[:foods].first[:brandOwner]).to be_a(String)
        expect(results[:foods].first).to have_key(:ingredients)
        expect(results[:foods].first[:ingredients]).to be_a(String)
      end
    end
  end
end