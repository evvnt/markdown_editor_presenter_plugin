require_relative 'markdown_editor/component'

module Voom
  module Presenters
    module Plugins
      module MarkdownEditor

        module DSLComponents

          def markdown_editor(**attribs, &block)
            self << MarkdownEditor::Component.new(parent: self, **attribs, &block)
          end

        end

        module WebClientComponents

          def render_header_markdown_editor(_pom, render:)
            view_dir = File.join(__dir__, 'markdown_editor')
            render.call :erb, :header, views: view_dir
          end

          def render_markdown_editor(comp, render:, components:, index:)
            view_dir = File.join(__dir__, 'markdown_editor')
            render.call :erb, :markdown_editor, views: view_dir,
                        locals: {comp: comp,
                                 components: components,
                                 index: index}
          end

        end

      end
    end
  end
end