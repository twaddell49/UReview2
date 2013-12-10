class CreateGames < ActiveRecord::Migration
  def up
  	create_table 'games' do |t|
  		t.string 'title'
  		t.string 'esrb'
  		t.datetime 'release_date'
  		t.string 'players'
  		t.text 'description'
  		t.string 'genre'
  		t.string 'console'
  		t.timestamps
  	end
  end

  def down
  	drop_table 'games'
  end
end
