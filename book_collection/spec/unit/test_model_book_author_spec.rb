# location: spec/feature/test_model_book_author_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'author', author: 'Michael Orgunov')    
    end
    it 'is valid with valid attributes (price)' do
        expect(subject).to be_valid
    end
end