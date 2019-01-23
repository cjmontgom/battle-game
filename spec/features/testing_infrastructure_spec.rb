feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Player 1 :'
    expect(page).to have_content 'Player 2 :'
  end
  scenario 'Can post player names' do
    visit('/')
    fill_in('Player 1 :', with:'name')
    fill_in('Player 2 :', with:'name')
  end
end
