feature 'homepage' do

  scenario 'displays homepage title' do
    visit '/'
    expect(page).to have_content 'Invading the Invaders'
  end

end
