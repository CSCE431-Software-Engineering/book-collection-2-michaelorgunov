# location: spec/feature/test_model_book_price_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'price', price: '300')    
    end
    it 'is valid with valid attributes (price)' do
        expect(subject).to be_valid
    end
end