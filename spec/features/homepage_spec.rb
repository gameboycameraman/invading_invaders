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

  scenario 'click on tutorials button' do
    visit '/'
    click_button('Tutorials')
    expect(page).to have_content 'Tutorials'
    expect(current_path).to eq('/tutorials')
  end

  scenario 'can navigate in tutorials to colour' do
    visit '/'
    click_button('Tutorials')
    click_button('Change Colour')
    expect(page).to have_content 'Colour'
    expect(current_path).to eq('/tutorials/colour')
  end

  scenario 'can navigate in tutorials to change sprites design' do
    visit '/'
    click_button('Tutorials')
    click_button('Change Sprites')
    expect(page).to have_content 'Sprites'
    expect(current_path).to eq('/tutorials/sprites')
  end

  scenario 'click on About Us button' do
    visit '/'
    click_button('About Us')
    expect(page).to have_content 'About Us'
    expect(current_path).to eq('/about_us')
  end

  scenario 'click on sources button' do
    visit '/'
    click_button('Sources')
    expect(page).to have_content 'Sources'
    expect(current_path).to eq('/sources')
  end
end
