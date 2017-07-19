feature "see Player 2's Hit Points" do
  scenario "we can see Player 2's HP" do
    sign_in_and_play
    expect(page).to have_text("Tom: 23HP")
  end
end
