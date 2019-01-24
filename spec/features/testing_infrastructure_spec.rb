feature 'Testing infrastructure' do

  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Player 1 :'
    expect(page).to have_content 'Player 2 :'
  end

  scenario 'Can post player names' do
    sign_in_and_play
    expect(page).to have_content 'name1 vs. name2'
  end

  scenario 'Displays the player\'s points' do
    sign_in_and_play
    expect(page).to have_content 'name2\'s hit points: 100'
  end

  scenario 'Player one can attack player two and receive confirmation' do
    sign_in_and_play
    click_button('Attack name2')
    expect(page).to have_content 'NAME1 HAS ATTACKED NAME2!'
  end

  scenario 'Attacks should reduce a player\'s hit points by 10' do
    srand(10)
    sign_in_and_play
    click_button('Attack name2')
    click_button('Ok')
    expect(page).to have_content 'name2\'s hit points: 81'
  end

  scenario 'Shows Game Over Screen when player hp reaches 0' do
    sign_in_and_play
    5.times { attack_and_click }
    click_button('Attack name2')
    expect(page).to have_content "Game Over"
  end

  scenario 'Shows player has lost' do
    sign_in_and_play
    5.times { attack_and_click }
    click_button('Attack name2')
    expect(page).to have_content "name2 has lost :("
  end

  # scenario 'Automatically attacks the player when it\'s not their turn' do
  #   sign_in_and_play
  #
  # end

end
