class CreateQlTvs < ActiveRecord::Migration[7.0]
  def change
    create_table :ql_tvs do |t|
      t.string :sv_id
      t.string :sv_name
      t.string :sv_class
      t.string :sv_addr
      t.date :sv_dob
      t.string :sv_password

      t.timestamps
    end
    add_index :ql_tvs, :sv_id, unique: true
  end
end
