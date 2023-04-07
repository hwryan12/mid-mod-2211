require 'rails_helper'

RSpec.describe Food do
  it 'exists' do
    data = {  
      :gtinUpc=>"492111402857",
      :description=>"SWEET POTATOES",
      :brandOwner=>"Branded",
      :ingredients=>"SWEET POTATOES."
    }

    food = Food.new(data)

    expect(food).to be_a(Food)
    expect(food.code).to eq("492111402857")
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.brand).to eq("Branded")
    expect(food.ingredients).to eq("SWEET POTATOES.")
  end
end