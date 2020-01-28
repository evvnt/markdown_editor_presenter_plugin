# MarkdownEditorPresenterPlugin

A plugin for [presenters](http://github.com/rx/presenters) that provides a Markdown based rich text area component. Utilizes [tui.editor](https://github.com/nhn/tui.editor) Javascript library.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'markdown_editor_presenter_plugin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install markdown_editor_presenter_plugin

## Usage

```ruby
Voom::Presenters.define(:demo) do
  plugin :markdown_editor

  content do 
    markdown_editor name: :description, label: 'Description', placeholder: 'Details here...', rows: 15 do
      value my_existing_value
    end
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/markdown_editor_presenter_plugin. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MarkdownEditorPresenterPlugin project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/markdown_editor_presenter_plugin/blob/master/CODE_OF_CONDUCT.md).
