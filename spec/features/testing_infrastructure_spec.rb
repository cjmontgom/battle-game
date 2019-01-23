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
    expect(page).to have_content 'name2\'s hit points:'
  end
end
