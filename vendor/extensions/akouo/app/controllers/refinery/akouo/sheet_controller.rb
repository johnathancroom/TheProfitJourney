module Refinery
  module Akouo
    class SheetController < ::Refinery::Akouo::AkouoController

      SAVED_MESSAGE = "Successfully saved!"

      before_filter :redirect?

      before_filter :find_models
      before_filter :only => [:start] { |c| c.find_page("/akouo/start") }
      before_filter :only => [:vision] { |c| c.find_page("/akouo/vision") }
      before_filter :only => [:last_year] { |c| c.find_page("/akouo/last_year") }

      def start_update
        if @user.update_attributes(params[:user])
          redirect_to refinery.akouo_start_path, :notice => SAVED_MESSAGE
        else
          render :"start/edit"
        end
      end

      def last_year
        @formula = Hash.new
        @formula["cb"] = @last_year.lyckone+@last_year.lycktwo+@last_year.lyckthree
        @formula["tb"] = @last_year.lycoh+@formula["cb"]
        @formula["toa"] = @last_year.lymma+@last_year.lysti+@last_year.lyada+@last_year.lyer+@last_year.lynrc+@last_year.lyi+@last_year.lyppe+@last_year.lyuf
        @formula["tfa"] = @last_year.lyfavt+@last_year.lyfadvt+@last_year.lyfaov+@last_year.lyfadov+@last_year.lyfaeo+@last_year.lyfafe+@last_year.lyfadfe+@last_year.lyfal+@last_year.lyfab+@last_year.lyfadb+@last_year.lyfali+@last_year.lyfadli
        @formula["fr"] = @last_year.lyfraone+@last_year.lyfratwo+@last_year.lyfrathree
        @formula["aaf"] = @last_year.lyaaaone+@last_year.lyaaatwo+@last_year.lyaaathree
        @formula["toa2"] = @last_year.lynrlt+@last_year.lys+@last_year.lyfraone+@last_year.lyfratwo+@last_year.lyfrathree+@last_year.lyaaaone+@last_year.lyaaatwo+@last_year.lyaaathree+@last_year.lyoia+@last_year.lyaaoi+@last_year.lyoc+@last_year.lyaaoc+@last_year.lyd+@last_year.lylti+@last_year.lyoa
        @formula["ta"] = @formula["tb"]+@last_year.lyar+@formula["toa"]+@formula["tfa"]+@formula["toa2"]
        @formula["tcc"] = @last_year.lyccone+@last_year.lycctwo+@last_year.lyccthree
        @formula["tocl"] = @last_year.lyalp+@last_year.lyalc+@last_year.lyalpt+@last_year.lyfica+@last_year.lym+@last_year.lyw+@last_year.lyalwc+@last_year.lyalst+@last_year.lyalprt+@last_year.lyalot+@last_year.lyali+@last_year.lyaldr+@last_year.lycplt+@last_year.lyol
        @formula["nplt"] = @last_year.lyltlone+@last_year.lyltltwo+@last_year.lyltlthree+@last_year.lyltlfour+@last_year.lyltlfive
        @formula["tltl"] = @formula["nplt"]+@last_year.lylcp+@last_year.lyshl
        @formula["tl"] = @last_year.lyap+@last_year.lyccone+@last_year.lycctwo+@last_year.lyccthree+@formula["tocl"]+@formula["tltl"]
        @formula["tsr"] = @pcly.pclyrs+@pcly.pclyrao+@pcly.pclyrsa+@pcly.pclyrr+@pcly.pclyrra
        @formula["tsc"] = @pcly.pclycs+@pcly.pclycao+@pcly.pclycsa+@pcly.pclycr+@pcly.pclycra
        @formula["ts"] = @formula["tsr"]+@formula["tsc"]
        @formula["l"] = @pcly.pclyltl+@pcly.pclyltc+@pcly.pclylptf+@pcly.pclylwci+@pcly.pclyltb
        @formula["o"] = @pcly.pclyvf+@pcly.pclyvmr+@pcly.pclyt
        @formula["tcs"] = @pcly.pclym+@formula["l"]+@pcly.pclysc+@pcly.pclyp+@pcly.pclyw+@pcly.pclysct+@formula["o"]+@pcly.pclyfsf+@pcly.pclyfnad+@pcly.pclypd
        @formula["gm"] = @formula["ts"]-@formula["tcs"]
        @formula["s"] = @last_year.lyfeso+@last_year.lyfesm+@last_year.lyfesa+@last_year.lyfesop+@last_year.lyfess+@last_year.lyfest
        @formula["a"] = @last_year.lyfeab+@last_year.lyfepr+@last_year.lyfecv+@last_year.lyfedv+@last_year.lyfedm+@last_year.lyfenm+@last_year.lyfeec+@last_year.lyfehms+@last_year.lyfeo+@last_year.lyfeiss+@last_year.lyfesrv+@last_year.lyfeys+@last_year.lyfeyppo
        @formula["v"] = @last_year.lyfevl+@last_year.lyfevrm+@last_year.lyfevi+@last_year.lyfevf+@last_year.lyfel
        @formula["te2"] = @formula["s"]+@last_year.lyfeb+@last_year.lyfept+@last_year.lyfewci+@last_year.lyfeeb+@last_year.lyfehvp+@last_year.lyfet+@last_year.lyfeth+@last_year.lyfer+@last_year.lyfeu+@last_year.lyfebrm+@last_year.lyfetl+@last_year.lyfeto+@last_year.lyfecp+@last_year.lyfeli+@last_year.lyfeccsf+@formula["a"]+@last_year.lyferr+@last_year.lyfeos+@last_year.lyfep+@last_year.lyfepos+@last_year.lyfeoel+@last_year.lyfefel+@last_year.lyfeoerm+@last_year.lyfesd+@last_year.lyfeulr+@formula["v"]+@last_year.lyfeaf+@last_year.lyfelf+@last_year.lyfeeer+@last_year.lyfeoser+@last_year.lyfece+@last_year.lyfebsc+@last_year.lyfeds+@last_year.lyfec+@last_year.lyfebd+@last_year.lyfect+@last_year.lyfeme+@last_year.lyfem+@last_year.lyfeii+@last_year.lyfedtv+@last_year.lyfeie+@last_year.lyfed+@last_year.lyfea+@last_year.lyfeoe+@last_year.lyfeit
        @formula["npbt"] = @formula["gm"]-@formula["te2"]
        @formula["te"] = @last_year.lyecs+@last_year.lyeoe+@last_year.lyepc+@last_year.lyedp+@last_year.lyeow+@last_year.lyere+@formula["npbt"]
        @formula["tle"] = @formula["tl"]+@formula["te"]
        @formula["nanp"] = @formula["npbt"]-(@last_year.lyfenone+@last_year.lyfentwo)
      end

      def last_year_update
        if @user.update_attributes(params[:user])
          redirect_to refinery.akouo_last_year_path, :notice => SAVED_MESSAGE
        else
          render :"last_year/edit"
        end
      end

    protected

      def find_models
        @user = current_refinery_user
        @customer = @user.customer
        @last_year = @user.last_year
        @pcly = @user.profit_comparison_last_year
      end

      def find_page(link_url)
        @page = ::Refinery::Page.where(:link_url => link_url).first
      end

    end
  end
end
