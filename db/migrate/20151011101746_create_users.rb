class CreateUsers < ActiveRecord::Migration
  def up
    # create_table :tableName,{:id => true/false} do |t|
      # t.column "name", :type, options
      # t.type "name", options
    # end

    # Table column types
    # binary        float
    # boolean       integer
    # date          string
    # datetime      text
    # decimal       time

    # Table column options
    # :limit      => size
    # :default    => value
    # :null       => true/false
    # :precision  => number
    # :scale      => number

    create_table :users do |t|
      t.column "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "emial", :default => "", :null => false
      t.string "password", :limit => 40
      # t.datetime "create_at"
      # t.datetime "update_at"
      t.timestamps null: false
    end
  end

  def down
    drop_table :users
  end
end
