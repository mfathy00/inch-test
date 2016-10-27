require 'rails_helper'

RSpec.describe Person, type: :model do
  it "should return number of rows" do

    Person.import('test/fixtures/files/people.csv')

    person = Person.first

    expect(person.lastname).to eq ('Dupont')
    expect(Person.count).to eq (2)

  end

  it "should return update name" do

    Person.import('test/fixtures/files/people.csv')

    Person.import('test/fixtures/files/update_people.csv')

    person = Person.first

    expect(person.lastname).to eq ('Ted')
    expect(person.email).to eq ('h.dupont@gmail.com')

    expect(Person.count).to eq (2)

  end
end
