# This migration comes from refinery_akouo (originally 6)
class RenameWrongPcnyColumns < ActiveRecord::Migration
  def change
    rename_column :pcny, :pcnyts, :pcnyrs
    rename_column :pcny, :pcnyao, :pcnyrao
    rename_column :pcny, :pcnysa, :pcnyrsa
    rename_column :pcny, :pcnyr, :pcnyrr
    rename_column :pcny, :pcnyra, :pcnyrra

    rename_column :pcny, :pcnyvem, :pcnym
    rename_column :pcny, :pcnyvetl, :pcnyltl
    rename_column :pcny, :pcnyvetc, :pcnyltc
    add_column :pcny, :pcnylptf, :decimal, :precision => 19, :scale => 4
    add_column :pcny, :pcnylwci, :decimal, :precision => 19, :scale => 4
    rename_column :pcny, :pcnyvetb, :pcnyltb
    rename_column :pcny, :pcnyvesc, :pcnysc
    rename_column :pcny, :pcnyvep, :pcnyp
    rename_column :pcny, :pcnyvew, :pcnyw
    rename_column :pcny, :pcnyves, :pcnysct
    rename_column :pcny, :pcnyvevf, :pcnyvf
    rename_column :pcny, :pcnyvevmr, :pcnyvmr
    rename_column :pcny, :pvnyvet, :pcnyt
    rename_column :pcny, :pcnyvefsf, :pcnyfsf
    rename_column :pcny, :pcnyvefnaf, :pcnyfnad
    rename_column :pcny, :pcnyvepd, :pcnypd
  end
end