module MoneyHelper
end

module ActionView
  module Helpers
    class FormBuilder
      def money_field(method, options = {})
        options = options.merge({:step => 0.01})
        @template.number_field(@object_name, method, objectify_options(options))
      end
    end
  end
end