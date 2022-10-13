class AddRelationToCosplays < ActiveRecord::Migration[7.0]
  def change
    add_reference :cosplays, :user, foreign_key: true
  end
end
