feature 'Enter names' do
  scenario "expects players to fill in their names in a form" do
    sign_in_and_play
    expect(page).to have_text("Mike vs. Tom")
  end
end
