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
        :lyecs, :lyeoe, :lyepc, :lyedp, :lyeow, :lyere,
        :lyfeso, :lyfesm, :lyfesa, :lyfesop, :lyfess, :lyfest,
        :lyfeb, :lyfept, :lyfewci, :lyfeeb, :lyfehvp, :lyfet, :lyfeth, :lyfer, :lyfeu, :lyfebrm, :lyfetl, :lyfeto, :lyfecp, :lyfeli, :lyfeccsf,
        :lyfeab, :lyfepr, :lyfecv, :lyfedv, :lyfedm, :lyfenm, :lyfeec, :lyfehms, :lyfeo, :lyfeiss, :lyfesrv, :lyfeys, :lyfeyppo,
        :lyferr, :lyfeos, :lyfep, :lyfepos, :lyfeoel, :lyfefel, :lyfeoerm, :lyfesd, :lyfeulr, :lyfevl, :lyfevrm, :lyfevi, :lyfevf, :lyfel,
        :lyfeaf, :lyfelf, :lyfeeer, :lyfeoser, :lyfece, :lyfebsc, :lyfeds, :lyfec, :lyfebd, :lyfect, :lyfeme, :lyfem, :lyfeii, :lyfedtv, :lyfeie, :lyfed, :lyfea, :lyfeoe, :lyfeit,
        :lyfenone, :lyfentwo
      )

      belongs_to :profit_center, :class_name => 'Refinery::Akouo::ProfitCenter'
    end
  end
end
