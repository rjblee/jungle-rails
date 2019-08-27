RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'should have a name' do
      cat1 = Category.find_or_create_by! name: 'Apparel'
      product1 = cat1.products.create({
        name: nil,
        description: Faker::Hipster.paragraph(4),
        image: 'apparel1.jpg',
        quantity: 10,
        price: 64.99
      })
      expect(product1.errors.full_messages.present?).to eq(true)
    end

    it 'should have a price' do
      cat1 = Category.find_or_create_by! name: 'Apparel'
      product1 = cat1.products.create({
        name: 'Men\'s Classy shirt',
        description: Faker::Hipster.paragraph(4),
        image: 'apparel1.jpg',
        quantity: 10,
        price: nil
      })
      expect(product1.errors.full_messages.present?).to eq(true)
    end

    it 'should have a quantity' do
      cat1 = Category.find_or_create_by! name: 'Apparel'
      product1 = cat1.products.create({
        name: 'Men\'s Classy shirt',
        description: Faker::Hipster.paragraph(4),
        image: 'apparel1.jpg',
        quantity: nil,
        price: 64.99
      })
      expect(product1.errors.full_messages.present?).to eq(true)
    end

    it 'should have a category' do
      product1 = Product.create({
        name: 'Men\'s Classy shirt',
        description: Faker::Hipster.paragraph(4),
        image: 'apparel1.jpg',
        quantity: 10,
        price: 64.99
      })
      expect(product1.errors.full_messages.present?).to eq(true)
    end

  end
end