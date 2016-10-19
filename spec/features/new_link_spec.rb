feature "so I can save a website" do
  scenario "add site's address to the bookmark manager" do
    visit('/links/add')
    fill_in 'url', with: 'http://www.yahoo.com'
    fill_in 'title', with: 'jini meme'
    click_button 'Add'
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('yahoo')
    end
  end
end
