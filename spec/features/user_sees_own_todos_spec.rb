require 'rails_helper'

feature 'User sees own todos' do
  scenario 'doesnt see others todods' do
    Todo.create!(title: 'Buy Milk', email: 'someone_else@example.com')
    sign_in_as 'someone@example.com'
    visit root_path
    expect(page).not_to have_css '.todos li', text: 'Buy Milk'
  end
end