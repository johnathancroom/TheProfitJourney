module MoneyHelper
end

module ActionView
  module Helpers
    class FormBuilder
      def money_field(method, options = {})
        # Force cents
        options = options.merge({:step => 0.01})

        # Show label if field is disabled
        if options[:disabled] == true
          @template.label(@object_name, method, options[:value], objectify_options(options))
        else
          @template.number_field(@object_name, method, objectify_options(options))
        end
      end
    end
  end
end