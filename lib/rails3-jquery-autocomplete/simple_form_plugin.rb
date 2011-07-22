module SimpleForm
  module Inputs
    class AutocompleteInput < Base
      def input
        @builder.autocomplete_field(attribute_name, options[:url], input_html_options)
      end

    protected

      def limit
        column && column.limit
      end

      def has_placeholder?
        placeholder_present?
      end
    end

    class AutocompleteIdInput < Base
      def input
        @builder.autocomplete_id_field(attribute_name, options[:url], options[:display_value], input_html_options)
      end

    protected

      def limit
        column && column.limit
      end

      def has_placeholder?
        placeholder_present?
      end
    end


  end
end

module SimpleForm
  class FormBuilder
    map_type :autocomplete, :to => SimpleForm::Inputs::AutocompleteInput
    map_type :autocomplete_id, :to => SimpleForm::Inputs::AutocompleteIdInput
  end
end
