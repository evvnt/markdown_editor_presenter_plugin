module Voom
  module Presenters
    module Plugins
      module MarkdownEditor
        class Component < DSL::Components::TextField
          attr_accessor :placeholder, :rows, :height, :resizable

          def initialize(**attribs, &block)
            super(type: :markdown_editor, **attribs, &block)
            @placeholder = attribs.delete(:placeholder)
            @rows = attribs.delete(:rows) || default(:rows)
            @height = "#{@rows * 24}px"
            @resizable = attribs.delete(:resizable) { false }
            expand!
          end

          def value(value=nil)
            return @value if locked?
            @value = value.gsub('\n', '<br>')
          end

        end
      end
    end
  end
end
