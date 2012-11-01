module Refinery
  module Akouo
    module Journeyboard
      class EmployeesController < JourneyboardController

        before_filter :employee_types

        def show
          @employee = Refinery::Akouo::JourneyboardEmployee.find(params[:id])

          error_404 if @employee.user != @user
        end

        def new
          @employee = Refinery::Akouo::JourneyboardEmployee.new
        end

        def edit
          @employee = Refinery::Akouo::JourneyboardEmployee.find(params[:id])

          error_404 if @employee.user != @user
        end

        def create
          @employee = @user.employees.build(params[:journeyboard_employee])

          if @employee.save
            redirect_to refinery.akouo_journeyboard_employees_path, :notice => 'Employee Added'
          else
            render :new
          end
        end

        def update
          @employee = Refinery::Akouo::JourneyboardEmployee.find(params[:id])

          error_404 if @employee.user != @user

          if @employee.update_attributes(params[:journeyboard_employee])
            redirect_to refinery.akouo_journeyboard_employees_path, :notice => 'Employee Saved'
          else
            render :edit
          end
        end

      protected

        def employee_types
          @employee_types = [
            ['CSR', 0],
            ['Technician', 1],
            ['Comfort Advisor', 2]
          ]
        end

      end
    end
  end
end