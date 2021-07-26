class FormBuilder < ActionView::Helpers::FormBuilder
  def styled_radio_button(*args)
    opts = args.extract_options!
    opts[:class] = 'focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300'
    radio_button *args, opts
  end
end
