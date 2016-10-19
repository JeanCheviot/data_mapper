
feature 'list link' do
  scenario 'shows a list of links' do
    Link.create(url: 'http://i.imgur.com/6Uy2qiZ.gifv', title: 'science')

    visit('/links')
    expect(page.status_code).to eq(200)
    within 'ul#links' do
      expect(page).to have_content('science')
    end
  end
end
