require 'spec_helper'

module Refinery
  module Akouo
    describe Akouo do
      describe "validations" do
        subject do
          FactoryGirl.create(:akouo)
        end

        it { should be_valid }
        its(:errors) { should be_empty }
      end
    end
  end
end
