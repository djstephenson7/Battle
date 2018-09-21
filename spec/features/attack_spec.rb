require './app'

feature 'Attack' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Jon attacked Daniel'
  end

  scenario 'decreasing player_2 health' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Daniel: 90 HP'
  end
end
