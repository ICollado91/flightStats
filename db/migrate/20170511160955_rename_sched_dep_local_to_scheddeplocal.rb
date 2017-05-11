class RenameSchedDepLocalToScheddeplocal < ActiveRecord::Migration[5.0]
  def change
    rename_column :flights, :SchedDepLocal, :scheddeplocal
  end
end
