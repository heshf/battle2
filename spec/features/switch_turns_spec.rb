feature "Switch turns" do
  scenario "After each turn, switch players" do
    attack
    click_button "Attack"
    expect(page).to have_text("Tom attacked Mike!")
  end
end