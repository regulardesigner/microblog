class AddStatusToStory < ActiveRecord::Migration
  def change
  	rename_column :stories, :status, :post
    add_column :stories, :status, :string
  end
end
