module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def indent_output(output, indentation, remove_blank_lines = false)
    output = output.gsub(/^\s*$\n/, '').gsub(/\n\z/, '') if remove_blank_lines
    output.gsub("\n", "\n" + indentation).html_safe
  end
end
