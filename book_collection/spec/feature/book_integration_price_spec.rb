# location: spec/feature/book_integration_price_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book (price)', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'price'
        fill_in "book[price]", with: '220'

        click_on 'Create Book'
        expect(page).to have_content('Book was successfully created.')
    end
end