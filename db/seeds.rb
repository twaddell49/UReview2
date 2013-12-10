games = [{:title => 'Halo 4', :esrb => 'M', :release_date => 'November 6, 2012', :players => '4', :description => 'The fourth installment in 
	the hit series that follows Master Chief and Cortana as they do battle against the mysterious Forerunners.', :genre => 'First-Person-
		Shooter', :console => 'Xbox 360', :cover_art => nil, :critic_review => nil, :user_review => nil}]

games.each do |game|
	Game.create!(game)
end