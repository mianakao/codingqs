module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end
  
  def helptxt(text)
    @str = "<a href='#' role='button' class='btn btn-xsmall popover-test' rel='popover' data-placement='top' data-content='" + text + "'>?</a>"
    return @str.html_safe
  end
end
