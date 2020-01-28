class MarkdownEditor {
  constructor(element) {
    console.log('\tMarkdown Editor');

    this.editorElement = element.querySelector('.v-markdown-text-area')
    this.data = this.editorElement.dataset;

    const instance = new tui.Editor({
      el: this.editorElement,
      initialEditType: 'wysiwyg',
      previewStyle: 'vertical',
      height: this.data.initialHeight,
      initialValue: element.querySelector('.v-markdown-text-area--initial-value').innerText,
      usageStatistics: false,
      language: 'en',
      toolbarItems: [
        'heading',
        'bold',
        'italic',
        'strike',
        'divider',
        'hr',
        'quote',
        'divider',
        'ul',
        'ol',
        //'task',
        'indent',
        'outdent',
        'divider',
        'table',
        'image',
        'link',
        // 'divider',
        //'code',
        //'codeblock',
        // 'divider',
      ]
    });
    this.editor = instance;
  }

  prepareSubmit(params) {
    params.push([this.data.name, this.editor.getValue()]);
  }
}