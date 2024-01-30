# location: spec/feature/test_model_book_publisher_date_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'publisher date', date: '2024-01-29')
    end
    it 'is valid with valid attributes (date)' do
        expect(subject).to be_valid
    end
end