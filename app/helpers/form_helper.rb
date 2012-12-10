module FormHelper
end

module ActionView
  module Helpers
    class FormBuilder
      def money_field(method, options = {})
        # Force cents
        options = options.merge({ :step => 0.01, :min => 0 })

        @template.number_field @object_name, method, objectify_options(options)
      end

      def percentage_field(method, options = {})
        options = options.merge({ :step => 0.01, :max => 100, :min => 0 })

        @template.number_field @object_name, method, objectify_options(options)
      end
    end
  end
end