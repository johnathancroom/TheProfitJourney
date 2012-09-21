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
        :lynrlt, :lys, :lyfraone, :lyfratwo, :lyfrathree, :lyaaaone, :lyaaatwo, :lyaaathree, :lyoia, :lyaaoi, :lyoc, :lyaaoc, :lyd, :lylti, :lyoa,
        :lyap,
        :lyccone, :lycctwo, :lyccthree,
        :lyalp, :lyalc, :lyalpt, :lyfica, :lym, :lyw, :lyalwc, :lyalst, :lyalprt, :lyalot, :lyali, :lyaldr, :lycplt, :lyol,
        :lyltlone, :lyltltwo, :lyltlthree, :lyltlfour, :lyltlfive, :lylcp, :lyshl,
        :lyecs, :lyeoe, :lyepc, :lyedp, :lyeow, :lyere
      )

      belongs_to :user, :class_name => 'Refinery::User'
    end
  end
end
