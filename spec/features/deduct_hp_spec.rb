feature "reduce Hit Points by 10 when attacked" do
  scenario "we can see Player 2's HP reduce by 10" do
    sign_in_and_play
    attack
    expect(page).to have_content("Tom: 50HP")
  end
end
