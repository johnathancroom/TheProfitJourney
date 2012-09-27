class AddMissingColumnsToNy < ActiveRecord::Migration
  def change
    add_column :ny, :nyfeab, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfepr, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfecv, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfedv, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfedm, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfenm, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfeec, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfehms, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfeo, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfeiss, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfesrv, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfeys, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfeyppo, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfept, :decimal, :precision => 19, :scale => 4
    add_column :ny, :nyfewci, :decimal, :precision => 19, :scale => 4
  end
end