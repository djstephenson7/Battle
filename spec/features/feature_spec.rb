require './app'

feature 'Entering the player names' do
  scenario 'Enter and verify both players names' do
    sign_in_and_play
    expect(page).to have_content 'Jon vs. Daniel'
  end
end

feature 'Shows player hit points' do
  scenario 'player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Daniel: 100HP'
  end
end
