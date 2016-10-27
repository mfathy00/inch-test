require 'rails_helper'

RSpec.describe Building, type: :model do

  it "should return number of rows" do

    Building.import('test/fixtures/files/buildings.csv')

    building = Building.first

    expect(building.address).to eq ('10 Rue La bruyère')
    expect(Building.count).to eq (2)

  end

  it "should return update address, zip code" do
    Building.import('test/fixtures/files/buildings.csv')

    Building.import('test/fixtures/files/update_buildings.csv')

    building = Building.first

    expect(building.manager_name).to eq ('Martin Faure')
    expect(building.address).to eq ('50 Rue La bruyère')
    expect(building.zip_code).to eq ('09090909090')

    expect(Building.count).to eq (2)


  end

end
