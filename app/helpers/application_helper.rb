load 'vendor/twitter-bootstrap-form-builder/lib/twitter-bootstrap-form-builder/helper.rb'
module ApplicationHelper
  include MNE::TwitterBootstrapFormBuilder::Helper

  def section(header, subtext = nil, &block)
    content_tag(:section, :id => header.underscore) do
      content_tag(:div, :class => "page-header") do
        content_tag(:h1, header)
      end + capture(&block)
    end
  end

  def snippet(which, linenums = true)
    content = File.open("app/views/snippets/#{which}").read

    classes = ["prettyprint", "lang-#{File.extname(which)}"]
    classes << "linenums" if linenums

    content_tag :pre, content, :class => classes
  end
end
