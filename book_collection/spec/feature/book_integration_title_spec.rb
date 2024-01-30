# location: spec/feature/book_integration_title_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book (title)', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'harry potter'
        click_on 'Create Book'
        expect(page).to have_content('Book was successfully created.')
    end

    scenario 'invalid inputs (title)' do
        visit new_book_path
        click_on 'Create Book'
        expect(page).to have_content("Title can't be blank")
    end
end