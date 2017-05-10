feature 'homepage' do

  scenario 'displays homepage title' do
    visit '/'
    expect(page).to have_content 'Invading the Invaders'
  end

  scenario 'click on set up button' do
    visit '/'
    click_button('Set Up')
    expect(page).to have_content 'Set Up'
    expect(current_path).to eq('/set_up')
  end

  scenario 'click on sources button' do
    visit '/'
    click_button('Sources')
    expect(page).to have_content 'Sources'
    expect(current_path).to eq('/sources')
  end

  scenario 'click on tutorials button' do
    visit '/'
    click_button('Tutorials')
    expect(page).to have_content 'Tutorials'
    expect(current_path).to eq('/tutorials')
  end

end
