def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Mike"
  fill_in :player_2_name, with: "Tom"
  click_button "Submit"
end


def attack
	sign_in_and_play
	click_button "Attack"
	click_button "OK"
end