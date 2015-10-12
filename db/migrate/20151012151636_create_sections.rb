# "change" runs the commands as given when migrating "up",
# runs the reverse of the commands when migrating "down".
# Only works if all commands are reversible.
# For example:
#   add_column can be reversed as remove_column
#     it has all info remove_column needs
#   remove_column can't be reversed as add_column
#     it deoesn't have column definition add_column needs


class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer "page_id"
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => false
      t.string "content_type"
      t.text "content"
      t.timestamps null: false
    end
    add_index("sections", "page_id")
  end
end
