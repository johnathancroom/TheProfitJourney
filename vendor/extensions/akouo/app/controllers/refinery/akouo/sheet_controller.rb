module Refinery
  module Akouo
    class SheetController < ::Refinery::Akouo::AkouoController

      SAVED_MESSAGE = 'Successfully saved!'

      before_filter { |controller| controller.redirect? :workshop }

      before_filter :check_and_build_user_tables, :find_models

      before_filter :only => [:start, :start_update] { |c| c.find_page('/akouo/start') }
      before_filter :only => [:vision, :vision_update] { |c| c.find_page('/akouo/vision') }
      before_filter :only => [:last_year, :last_year_update] { |c|
        c.find_page('/akouo/last_year')
        c.do_formulas('ly')
      }
      before_filter :only => [:next_year, :next_year_update] { |c|
        c.find_page('/akouo/next_year')
        c.do_formulas('ny')
      }

      def start_update
        update(@customer, params[:customer], :start)
      end

      def last_year_update
        update(@user, params[:user], :last_year)
      end

      def next_year_update
        update(@user, params[:user], :next_year)
      end

    protected

      def find_models
        @user = current_refinery_user

        @profit_centers = @user.profit_centers

        @profit_center = @user.profit_centers.first

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

      def do_formulas(prefix)
        @formula = Hash.new

        @user.profit_centers.each_with_index do |profit_center, i|

          case prefix
          when 'ly'
            model = profit_center.last_year
            model2 = profit_center.profit_center_last_year
          when 'ny'
            model = profit_center.next_year
            model2 = profit_center.profit_center_next_year
          end

          @formula[i] = Hash.new

          @formula[i]["cb"] = model.send("#{prefix}ckone")+model.send("#{prefix}cktwo")+model.send("#{prefix}ckthree")
          @formula[i]["tb"] = model.send("#{prefix}coh")+@formula[i]["cb"]
          @formula[i]["toa"] = model.send("#{prefix}mma")+model.send("#{prefix}sti")+model.send("#{prefix}ada")+model.send("#{prefix}er")+model.send("#{prefix}nrc")+model.send("#{prefix}i")+model.send("#{prefix}ppe")+model.send("#{prefix}uf")
          @formula[i]["tfa"] = model.send("#{prefix}favt")+model.send("#{prefix}fadvt")+model.send("#{prefix}faov")+model.send("#{prefix}fadov")+model.send("#{prefix}faeo")+model.send("#{prefix}fafe")+model.send("#{prefix}fadfe")+model.send("#{prefix}fal")+model.send("#{prefix}fab")+model.send("#{prefix}fadb")+model.send("#{prefix}fali")+model.send("#{prefix}fadli")
          @formula[i]["fr"] = model.send("#{prefix}fraone")+model.send("#{prefix}fratwo")+model.send("#{prefix}frathree")
          @formula[i]["aaf"] = model.send("#{prefix}aaaone")+model.send("#{prefix}aaatwo")+model.send("#{prefix}aaathree")
          @formula[i]["toa2"] = model.send("#{prefix}nrlt")+model.send("#{prefix}s")+model.send("#{prefix}fraone")+model.send("#{prefix}fratwo")+model.send("#{prefix}frathree")+model.send("#{prefix}aaaone")+model.send("#{prefix}aaatwo")+model.send("#{prefix}aaathree")+model.send("#{prefix}oia")+model.send("#{prefix}aaoi")+model.send("#{prefix}oc")+model.send("#{prefix}aaoc")+model.send("#{prefix}d")+model.send("#{prefix}lti")+model.send("#{prefix}oa")
          @formula[i]["ta"] = @formula[i]["tb"]+model.send("#{prefix}ar")+@formula[i]["toa"]+@formula[i]["tfa"]+@formula[i]["toa2"]
          @formula[i]["tap"] = model.send("#{prefix}ap")
          @formula[i]["tcc"] = model.send("#{prefix}ccone")+model.send("#{prefix}cctwo")+model.send("#{prefix}ccthree")
          @formula[i]["tocl"] = model.send("#{prefix}alp")+model.send("#{prefix}alc")+model.send("#{prefix}alpt")+model.send("#{prefix}fica")+model.send("#{prefix}m")+model.send("#{prefix}w")+model.send("#{prefix}alwc")+model.send("#{prefix}alst")+model.send("#{prefix}alprt")+model.send("#{prefix}alot")+model.send("#{prefix}ali")+model.send("#{prefix}aldr")+model.send("#{prefix}cplt")+model.send("#{prefix}ol")
          @formula[i]["nplt"] = model.send("#{prefix}ltlone")+model.send("#{prefix}ltltwo")+model.send("#{prefix}ltlthree")+model.send("#{prefix}ltlfour")+model.send("#{prefix}ltlfive")
          @formula[i]["tltl"] = @formula[i]["nplt"]+model.send("#{prefix}lcp")+model.send("#{prefix}shl")
          @formula[i]["tl"] = model.send("#{prefix}ap")+model.send("#{prefix}ccone")+model.send("#{prefix}cctwo")+model.send("#{prefix}ccthree")+@formula[i]["tocl"]+@formula[i]["tltl"]
          @formula[i]["tsr"] = model2.send("pc#{prefix}rs")+model2.send("pc#{prefix}rao")+model2.send("pc#{prefix}rsa")+model2.send("pc#{prefix}rr")+model2.send("pc#{prefix}rra")
          @formula[i]["tsc"] = model2.send("pc#{prefix}cs")+model2.send("pc#{prefix}cao")+model2.send("pc#{prefix}csa")+model2.send("pc#{prefix}cr")+model2.send("pc#{prefix}cra")
          @formula[i]["ts"] = @formula[i]["tsr"]+@formula[i]["tsc"]
          @formula[i]["l"] = model2.send("pc#{prefix}ltl")+model2.send("pc#{prefix}ltc")+model2.send("pc#{prefix}lptf")+model2.send("pc#{prefix}lwci")+model2.send("pc#{prefix}ltb")
          @formula[i]["o"] = model2.send("pc#{prefix}vf")+model2.send("pc#{prefix}vmr")+model2.send("pc#{prefix}t")
          @formula[i]["tcs"] = model2.send("pc#{prefix}m")+@formula[i]["l"]+model2.send("pc#{prefix}sc")+model2.send("pc#{prefix}p")+model2.send("pc#{prefix}w")+model2.send("pc#{prefix}sct")+@formula[i]["o"]+model2.send("pc#{prefix}fsf")+model2.send("pc#{prefix}fnad")+model2.send("pc#{prefix}pd")
          @formula[i]["gm"] = @formula[i]["ts"]-@formula[i]["tcs"]
          @formula[i]["s"] = model.send("#{prefix}feso")+model.send("#{prefix}fesm")+model.send("#{prefix}fesa")+model.send("#{prefix}fesop")+model.send("#{prefix}fess")+model.send("#{prefix}fest")
          @formula[i]["a"] = model.send("#{prefix}feab")+model.send("#{prefix}fepr")+model.send("#{prefix}fecv")+model.send("#{prefix}fedv")+model.send("#{prefix}fedm")+model.send("#{prefix}fenm")+model.send("#{prefix}feec")+model.send("#{prefix}fehms")+model.send("#{prefix}feo")+model.send("#{prefix}feiss")+model.send("#{prefix}fesrv")+model.send("#{prefix}feys")+model.send("#{prefix}feyppo")
          @formula[i]["v"] = model.send("#{prefix}fevl")+model.send("#{prefix}fevrm")+model.send("#{prefix}fevi")+model.send("#{prefix}fevf")+model.send("#{prefix}fel")
          @formula[i]["te2"] = @formula[i]["s"]+model.send("#{prefix}feb")+model.send("#{prefix}fept")+model.send("#{prefix}fewci")+model.send("#{prefix}feeb")+model.send("#{prefix}fehvp")+model.send("#{prefix}fet")+model.send("#{prefix}feth")+model.send("#{prefix}fer")+model.send("#{prefix}feu")+model.send("#{prefix}febrm")+model.send("#{prefix}fetl")+model.send("#{prefix}feto")+model.send("#{prefix}fecp")+model.send("#{prefix}feli")+model.send("#{prefix}feccsf")+@formula[i]["a"]+model.send("#{prefix}ferr")+model.send("#{prefix}feos")+model.send("#{prefix}fep")+model.send("#{prefix}fepos")+model.send("#{prefix}feoel")+model.send("#{prefix}fefel")+model.send("#{prefix}feoerm")+model.send("#{prefix}fesd")+model.send("#{prefix}feulr")+@formula[i]["v"]+model.send("#{prefix}feaf")+model.send("#{prefix}felf")+model.send("#{prefix}feeer")+model.send("#{prefix}feoser")+model.send("#{prefix}fece")+model.send("#{prefix}febsc")+model.send("#{prefix}feds")+model.send("#{prefix}fec")+model.send("#{prefix}febd")+model.send("#{prefix}fect")+model.send("#{prefix}feme")+model.send("#{prefix}fem")+model.send("#{prefix}feii")+model.send("#{prefix}fedtv")+model.send("#{prefix}feie")+model.send("#{prefix}fed")+model.send("#{prefix}fea")+model.send("#{prefix}feoe")+model.send("#{prefix}feit")
          @formula[i]["npbt"] = @formula[i]["gm"]-@formula[i]["te2"]
          @formula[i]["te"] = model.send("#{prefix}ecs")+model.send("#{prefix}eoe")+model.send("#{prefix}epc")+model.send("#{prefix}edp")+model.send("#{prefix}eow")+model.send("#{prefix}ere")+@formula[i]["npbt"]
          @formula[i]["tle"] = @formula[i]["tl"]+@formula[i]["te"]
          @formula[i]["nanp"] = @formula[i]["npbt"]-(model.send("#{prefix}fenone")+model.send("#{prefix}fentwo"))
        end
      end

    end
  end
end
