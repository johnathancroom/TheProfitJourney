module Refinery
  module Akouo
    module Journeyboard
      class CsrEntriesController < JourneyboardController

        def new
          @entry = @user.journeyboard_csr_entries.build
        end

        def create
          @entry = @user.journeyboard_csr_entries.build(params[:journeyboard_csr_entry])

          if @entry.save
            redirect_to (session.delete(:journeyboard_edit_return_to) || refinery.akouo_journeyboard_entries_path), :notice => 'CSR Entry Added.'
          else
            render :new
          end
        end

        def edit
          @entry = @user.journeyboard_csr_entries.find(params[:id])
        end

        def update
          @entry = @user.journeyboard_csr_entries.find(params[:id])

          if @entry.update_attributes(params[:journeyboard_csr_entry])
            redirect_to (session.delete(:journeyboard_edit_return_to) || refinery.akouo_journeyboard_entries_path), :notice => 'CSR Entry Saved.'
          else
            render :edit
          end
        end

      end
    end
  end
end