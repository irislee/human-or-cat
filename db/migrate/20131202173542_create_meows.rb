class CreateMeows < ActiveRecord::Migration
  def change
    create_table :meows do |t|
      t.string :file_name
      t.boolean :cat
    end
  end
end
