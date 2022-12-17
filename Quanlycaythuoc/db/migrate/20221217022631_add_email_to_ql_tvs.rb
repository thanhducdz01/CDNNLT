class AddEmailToQlTvs < ActiveRecord::Migration[7.0]
  def change
    add_column :ql_tvs, :sv_place, :string
  end
end
