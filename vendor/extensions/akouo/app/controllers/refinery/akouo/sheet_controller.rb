module Refinery
  module Akouo
    class SheetController < ::Refinery::Akouo::AkouoController

      SAVED_MESSAGE = "Successfully saved!"

      before_filter :redirect?, :check_and_build_user_tables

      before_filter :find_models
      before_filter :only => [:start, :start_update] { |c| c.find_page("/akouo/start") }
      before_filter :only => [:vision, :vision_update] { |c| c.find_page("/akouo/vision") }
      before_filter :only => [:last_year, :last_year_update] { |c|
        c.find_page("/akouo/last_year")
        c.do_formulas("ly", @last_year, @pcly)
      }
      before_filter :only => [:next_year, :next_year_update] { |c|
        c.find_page("/akouo/next_year")
        c.do_formulas("ny", @next_year, @pcny)
      }

      def start_update
        update(@customer, params[:customer], :start)
      end

      def last_year_update
        update(@profit_center, params[:profit_center], :last_year)
      end

      def next_year_update
        update(@profit_center, params[:profit_center], :next_year)
      end

    protected

      def find_models
        @user = current_refinery_user
        @profit_center = current_refinery_user.profit_centers.first
        @customer = @user.customer
        @last_year = @profit_center.last_year
        @pcly = @profit_center.profit_center_last_year
        @next_year = @profit_center.next_year
        @pcny = @profit_center.profit_center_next_year
      end

      def find_page(link_url)
        @page = ::Refinery::Page.where(:link_url => link_url).first
      end

      def update(model, attributes, path)
        if model.update_attributes(attributes)
          flash.now[:notice] = SAVED_MESSAGE
        end

        render path
      end

      def do_formulas(prefix, model, model2)
        @formula = Hash.new
        @formula["cb"] = model.send("#{prefix}ckone")+model.send("#{prefix}cktwo")+model.send("#{prefix}ckthree")
        @formula["tb"] = model.send("#{prefix}coh")+@formula["cb"]
        @formula["toa"] = model.send("#{prefix}mma")+model.send("#{prefix}sti")+model.send("#{prefix}ada")+model.send("#{prefix}er")+model.send("#{prefix}nrc")+model.send("#{prefix}i")+model.send("#{prefix}ppe")+model.send("#{prefix}uf")
        @formula["tfa"] = model.send("#{prefix}favt")+model.send("#{prefix}fadvt")+model.send("#{prefix}faov")+model.send("#{prefix}fadov")+model.send("#{prefix}faeo")+model.send("#{prefix}fafe")+model.send("#{prefix}fadfe")+model.send("#{prefix}fal")+model.send("#{prefix}fab")+model.send("#{prefix}fadb")+model.send("#{prefix}fali")+model.send("#{prefix}fadli")
        @formula["fr"] = model.send("#{prefix}fraone")+model.send("#{prefix}fratwo")+model.send("#{prefix}frathree")
        @formula["aaf"] = model.send("#{prefix}aaaone")+model.send("#{prefix}aaatwo")+model.send("#{prefix}aaathree")
        @formula["toa2"] = model.send("#{prefix}nrlt")+model.send("#{prefix}s")+model.send("#{prefix}fraone")+model.send("#{prefix}fratwo")+model.send("#{prefix}frathree")+model.send("#{prefix}aaaone")+model.send("#{prefix}aaatwo")+model.send("#{prefix}aaathree")+model.send("#{prefix}oia")+model.send("#{prefix}aaoi")+model.send("#{prefix}oc")+model.send("#{prefix}aaoc")+model.send("#{prefix}d")+model.send("#{prefix}lti")+model.send("#{prefix}oa")
        @formula["ta"] = @formula["tb"]+model.send("#{prefix}ar")+@formula["toa"]+@formula["tfa"]+@formula["toa2"]
        @formula["tap"] = model.send("#{prefix}ap")
        @formula["tcc"] = model.send("#{prefix}ccone")+model.send("#{prefix}cctwo")+model.send("#{prefix}ccthree")
        @formula["tocl"] = model.send("#{prefix}alp")+model.send("#{prefix}alc")+model.send("#{prefix}alpt")+model.send("#{prefix}fica")+model.send("#{prefix}m")+model.send("#{prefix}w")+model.send("#{prefix}alwc")+model.send("#{prefix}alst")+model.send("#{prefix}alprt")+model.send("#{prefix}alot")+model.send("#{prefix}ali")+model.send("#{prefix}aldr")+model.send("#{prefix}cplt")+model.send("#{prefix}ol")
        @formula["nplt"] = model.send("#{prefix}ltlone")+model.send("#{prefix}ltltwo")+model.send("#{prefix}ltlthree")+model.send("#{prefix}ltlfour")+model.send("#{prefix}ltlfive")
        @formula["tltl"] = @formula["nplt"]+model.send("#{prefix}lcp")+model.send("#{prefix}shl")
        @formula["tl"] = model.send("#{prefix}ap")+model.send("#{prefix}ccone")+model.send("#{prefix}cctwo")+model.send("#{prefix}ccthree")+@formula["tocl"]+@formula["tltl"]
        @formula["tsr"] = model2.send("pc#{prefix}rs")+model2.send("pc#{prefix}rao")+model2.send("pc#{prefix}rsa")+model2.send("pc#{prefix}rr")+model2.send("pc#{prefix}rra")
        @formula["tsc"] = model2.send("pc#{prefix}cs")+model2.send("pc#{prefix}cao")+model2.send("pc#{prefix}csa")+model2.send("pc#{prefix}cr")+model2.send("pc#{prefix}cra")
        @formula["ts"] = @formula["tsr"]+@formula["tsc"]
        @formula["l"] = model2.send("pc#{prefix}ltl")+model2.send("pc#{prefix}ltc")+model2.send("pc#{prefix}lptf")+model2.send("pc#{prefix}lwci")+model2.send("pc#{prefix}ltb")
        @formula["o"] = model2.send("pc#{prefix}vf")+model2.send("pc#{prefix}vmr")+model2.send("pc#{prefix}t")
        @formula["tcs"] = model2.send("pc#{prefix}m")+@formula["l"]+model2.send("pc#{prefix}sc")+model2.send("pc#{prefix}p")+model2.send("pc#{prefix}w")+model2.send("pc#{prefix}sct")+@formula["o"]+model2.send("pc#{prefix}fsf")+model2.send("pc#{prefix}fnad")+model2.send("pc#{prefix}pd")
        @formula["gm"] = @formula["ts"]-@formula["tcs"]
        @formula["s"] = model.send("#{prefix}feso")+model.send("#{prefix}fesm")+model.send("#{prefix}fesa")+model.send("#{prefix}fesop")+model.send("#{prefix}fess")+model.send("#{prefix}fest")
        @formula["a"] = model.send("#{prefix}feab")+model.send("#{prefix}fepr")+model.send("#{prefix}fecv")+model.send("#{prefix}fedv")+model.send("#{prefix}fedm")+model.send("#{prefix}fenm")+model.send("#{prefix}feec")+model.send("#{prefix}fehms")+model.send("#{prefix}feo")+model.send("#{prefix}feiss")+model.send("#{prefix}fesrv")+model.send("#{prefix}feys")+model.send("#{prefix}feyppo")
        @formula["v"] = model.send("#{prefix}fevl")+model.send("#{prefix}fevrm")+model.send("#{prefix}fevi")+model.send("#{prefix}fevf")+model.send("#{prefix}fel")
        @formula["te2"] = @formula["s"]+model.send("#{prefix}feb")+model.send("#{prefix}fept")+model.send("#{prefix}fewci")+model.send("#{prefix}feeb")+model.send("#{prefix}fehvp")+model.send("#{prefix}fet")+model.send("#{prefix}feth")+model.send("#{prefix}fer")+model.send("#{prefix}feu")+model.send("#{prefix}febrm")+model.send("#{prefix}fetl")+model.send("#{prefix}feto")+model.send("#{prefix}fecp")+model.send("#{prefix}feli")+model.send("#{prefix}feccsf")+@formula["a"]+model.send("#{prefix}ferr")+model.send("#{prefix}feos")+model.send("#{prefix}fep")+model.send("#{prefix}fepos")+model.send("#{prefix}feoel")+model.send("#{prefix}fefel")+model.send("#{prefix}feoerm")+model.send("#{prefix}fesd")+model.send("#{prefix}feulr")+@formula["v"]+model.send("#{prefix}feaf")+model.send("#{prefix}felf")+model.send("#{prefix}feeer")+model.send("#{prefix}feoser")+model.send("#{prefix}fece")+model.send("#{prefix}febsc")+model.send("#{prefix}feds")+model.send("#{prefix}fec")+model.send("#{prefix}febd")+model.send("#{prefix}fect")+model.send("#{prefix}feme")+model.send("#{prefix}fem")+model.send("#{prefix}feii")+model.send("#{prefix}fedtv")+model.send("#{prefix}feie")+model.send("#{prefix}fed")+model.send("#{prefix}fea")+model.send("#{prefix}feoe")+model.send("#{prefix}feit")
        @formula["npbt"] = @formula["gm"]-@formula["te2"]
        @formula["te"] = model.send("#{prefix}ecs")+model.send("#{prefix}eoe")+model.send("#{prefix}epc")+model.send("#{prefix}edp")+model.send("#{prefix}eow")+model.send("#{prefix}ere")+@formula["npbt"]
        @formula["tle"] = @formula["tl"]+@formula["te"]
        @formula["nanp"] = @formula["npbt"]-(model.send("#{prefix}fenone")+model.send("#{prefix}fentwo"))
      end

    end
  end
end
