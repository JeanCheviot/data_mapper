feature "so I can add a tag" do
  scenario "add tags to a link" do
    visit('/links/add')
    fill_in 'url', with: 'http://www.yahoo.com'
    fill_in 'title', with: 'jini meme'
    fill_in 'label', with: 'I love Elizabeth'
    click_button 'Add'
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('I love Elizabeth')
    end
  end
end
