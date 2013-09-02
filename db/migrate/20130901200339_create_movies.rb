class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.string :director

      t.timestamps
    end
  end
end
