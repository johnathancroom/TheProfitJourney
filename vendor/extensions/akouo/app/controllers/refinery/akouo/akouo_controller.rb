module Refinery
  module Akouo
    class AkouoController < ::ApplicationController
      before_filter :get_plans

    protected

      def get_plans
        @plans = [
          # Name, amount, frequency (by month)
          ["Bronze (Free)", 0, 0],
          ["", 0, 0],
          ["Silver ($39.99/month)", 39.99, 1],
          ["Silver ($450/year)", 450, 12],
          ["Gold ($149.99/month)", 149.99, 1],
          ["Gold ($1600/year)", 1600, 12],
          ["Platinum ($249.99/month)", 249.99, 1],
          ["Platinum ($2700/year)", 2700, 12]
        ]
      end

    end
  end
end