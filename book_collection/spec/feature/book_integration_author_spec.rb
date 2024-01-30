# location: spec/feature/book_integration_author_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book (author)', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'author'
        fill_in "book[author]", with: 'Michael Orgunov'

        click_on 'Create Book'
        expect(page).to have_content('Book was successfully created.')
    end
end