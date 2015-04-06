class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :posts, :type, :itemtype
  end


end
