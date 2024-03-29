# location: spec/feature/test_model_book_title_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'book')
    end
    it 'is valid with valid attributes (title)' do
        expect(subject).to be_valid
    end
    it 'is not valid without a name (title)' do 
        subject.title = nil
        expect(subject).not_to be_valid
    end
end