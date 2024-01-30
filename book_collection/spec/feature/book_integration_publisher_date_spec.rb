# location: spec/feature/book_integration_publisher_date_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book (publisher date)', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'date'
        fill_in "book[date]", with: '2024-01-29'

        click_on 'Create Book'
        expect(page).to have_content('Book was successfully created.')
    end
end