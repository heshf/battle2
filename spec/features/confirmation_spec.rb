feature "Attacking" do
  scenario "can attack Player 2 and receive the confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_text("Mike attacked Tom!")
  end
end
