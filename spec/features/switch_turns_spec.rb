feature "Switch turns" do
  scenario "After each turn, switch players" do
    sign_in_and_play
    attack
    click_on "Attack"
    expect(page).to have_text("Tom attacked Mike!")
  end
end
