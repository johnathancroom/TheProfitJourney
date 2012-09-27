module Refinery
  module Akouo
    class NextYear < Refinery::Core::BaseModel
      self.table_name = 'ny'

      attr_accessible(
        :nycoh,
        :nyckone, :nycktwo, :nyckthree,
        :nyar,
        :nymma, :nysti, :nyada, :nyer, :nynrc, :nyi, :nyppe, :nyuf,
        :nyfavt, :nyfadvt, :nyfaov, :nyfadov, :nyfaeo, :nyfadeo, :nyfafe, :nyfadfe, :nyfal, :nyfab, :nyfadb, :nyfali, :nyfadli,
        :nynrlt, :nys, :nyfraone, :nyfratwo, :nyfrathree, :nyaaaone, :nyaaatwo, :nyaaathree, :nyoia, :nyaaoi, :nyoc, :nyaaoc, :nyd, :nylti, :nyoa,
        :nyap,
        :nyccone, :nycctwo, :nyccthree,
        :nyalp, :nyalc, :nyalpt, :nyfica, :nym, :nyw, :nyalwc, :nyalst, :nyalprt, :nyalot, :nyali, :nyaldr, :nycplt, :nyol,
        :nyltlone, :nyltltwo, :nyltlthree, :nyltlfour, :nyltlfive, :nylcp, :nyshl,
        :nyecs, :nyeoe, :nyepc, :nyedp, :nyeow, :nyere,
        :nyfeso, :nyfesm, :nyfesa, :nyfesop, :nyfess, :nyfest,
        :nyfeb, :nyfept, :nyfewci, :nyfeeb, :nyfehvp, :nyfet, :nyfeth, :nyfer, :nyfeu, :nyfebrm, :nyfetl, :nyfeto, :nyfecp, :nyfeli, :nyfeccsf,
        :nyfeab, :nyfepr, :nyfecv, :nyfedv, :nyfedm, :nyfenm, :nyfeec, :nyfehms, :nyfeo, :nyfeiss, :nyfesrv, :nyfeys, :nyfeyppo,
        :nyferr, :nyfeos, :nyfep, :nyfepos, :nyfeoel, :nyfefel, :nyfeoerm, :nyfesd, :nyfeulr, :nyfevl, :nyfevrm, :nyfevi, :nyfevf, :nyfel,
        :nyfeaf, :nyfelf, :nyfeeer, :nyfeoser, :nyfece, :nyfebsc, :nyfeds, :nyfec, :nyfebd, :nyfect, :nyfeme, :nyfem, :nyfeii, :nyfedtv, :nyfeie, :nyfed, :nyfea, :nyfeoe, :nyfeit,
        :nyfenone, :nyfentwo
      )

      belongs_to :user, :class_name => 'Refinery::User'
    end
  end
end
