feature "Winning and Losing" do
  scenario "When a player reachs 0hp, game ends" do
    sign_in_and_play
    11.times { attack }
    expect(page).to have_text("Tom loses!")
  end
end
