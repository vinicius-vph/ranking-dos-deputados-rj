require 'rails_helper'

RSpec.describe ParliamentaryCost, type: :model do
  it '- Should be able to see that attributes cannot be blank' do
    parliamentary_cost = ParliamentaryCost.new

    parliamentary_cost.valid?

    expect(parliamentary_cost.errors[:txNomeParlamentar]).to include('não pode ficar em branco')
    expect(parliamentary_cost.errors[:sgUF]).to include('não pode ficar em branco')
    expect(parliamentary_cost.errors[:vlrLiquido]).to include('não pode ficar em branco')
  end
end
