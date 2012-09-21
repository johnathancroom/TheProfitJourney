module Refinery
  module Akouo
    class LastYear < Refinery::Core::BaseModel
      self.table_name = 'ly'

      attr_accessible(
        :lycoh,
        :lyckone, :lycktwo, :lyckthree,
        :lyar,
        :lymma, :lysti, :lyada, :lyer, :lynrc, :lyi, :lyppe, :lyuf,
        :lyfavt, :lyfadvt, :lyfaov, :lyfadov, :lyfaeo, :lyfadeo, :lyfafe, :lyfadfe, :lyfal, :lyfab, :lyfadb, :lyfali, :lyfadli,
        :lynrlt, :lys, :lyfraone, :lyfratwo, :lyfrathree, :lyaaaone, :lyaaatwo, :lyaaathree, :lyoia, :lyaaoi, :lyoc, :lyaaoc, :lyd, :lylti, :lyoa
      )

      belongs_to :user, :class_name => 'Refinery::User'
    end
  end
end
