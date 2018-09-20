require 'rails_helper'

feature 'User marks todo incomplete todo' do
  scenario 'successfully' do
    sign_in

   create_todo 'Buy Milk'

    click_on 'Mark Complete'

    click_on 'Mark incomplete'

    expect(page).to display_completed_todo 'Buy Milk'
    expect(page).to display_todo 'Buy Milk'
  end
end
