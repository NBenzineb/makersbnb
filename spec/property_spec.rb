require './lib/property'

describe Property do
  it 'check its a property' do
    expect(subject).to be_a Property
  end

  it 'checks name of property' do
    property = Property.create(name: 'Flat1')
    persisted_data = persisted_data(table: 'properties', id: property.id)
    expect(property).to be_a Property
    expect(property.name).to eq persisted_data.first['name']
  end

  it 'does not save the property when no name is given' do
    property = Property.create(name: '')
    expect(Property.all).to be_empty
  end
end