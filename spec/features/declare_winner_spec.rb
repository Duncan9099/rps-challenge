require 'capybara'

feature 'declare winner' do
  scenario 'Boris chooses rock, computer chooses scissors' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(2)
    click_button 'Rock'

    expect(page).to have_content("Congratulations! You win!")
  end
end
