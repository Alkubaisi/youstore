class Addref < ActiveRecord::Migration[5.0]
  def change
        add_reference :results, :storages, index: true
  end
end
