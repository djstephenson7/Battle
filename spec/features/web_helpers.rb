def sign_in_and_play
  visit('/')
  fill_in(:player_1, with: 'Jon')
  fill_in(:player_2, with: 'Daniel')
  click_button('Submit')
end
